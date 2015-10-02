//
//  AppDelegate.m
//  QoM Tile Replacer
//
//  Created by Matthew French on 10/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    for (int i = 0; i < 250; i++) {
        if (tiles[i] != nil) {
            [tiles[i] release];
        }
        if (replaceTiles[i] != nil) {
            [replaceTiles[i] release];
        }
        if (mapImg != nil) [mapImg release];
        if (newMapImg != nil) [newMapImg release];
    }
    [super dealloc];
}
	
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    for (int i = 0; i < 250; i++) {
        tiles[i] = nil;
        replaceTiles[i] = nil;
    }
    NSString* path = [[[NSBundle mainBundle] bundlePath] stringByDeletingLastPathComponent];
    NSString* loc = [NSString stringWithFormat:@"%@/Tiles",path];
    
    BOOL load = true;
    int count = 0;
    while (load) {
        NSImage* image = [[NSImage alloc] initWithContentsOfFile:[NSString stringWithFormat:@"%@/%d.png",loc,count]];
        if (image != nil) {
            tiles[count] = image;
            image = nil;
            NSImage* image = [[NSImage alloc] initWithContentsOfFile:[NSString stringWithFormat:@"%@/r%d.png",loc,count]];
            if (image != nil) {
                replaceTiles[count] = image;
                
                //Now for each replacer tile, fill out it's pixel array
                [image size];
                NSData* data = [image TIFFRepresentation];
                [data retain];
                CGImageSourceRef source = CGImageSourceCreateWithData((CFDataRef)data, NULL);
                CGImageRef maskRef =  CGImageSourceCreateImageAtIndex(source, 0, NULL);
                NSBitmapImageRep *bitmap = [[NSBitmapImageRep alloc] initWithCGImage:maskRef];
                CGImageRelease(maskRef);
                [data release];
                data = nil;
                for (int x = 0; x < 45; x++) {
                    for (int y = 0; y < 45; y++) {
                        NSColor *color = [bitmap colorAtX:x y:y];
                        replaceTilesPixels[count][x][y][0] = [color redComponent];
                        replaceTilesPixels[count][x][y][1] = [color greenComponent];
                        replaceTilesPixels[count][x][y][2] = [color blueComponent];
                        replaceTilesPixels[count][x][y][3] = [color alphaComponent];
                    }
                }
                [bitmap release];
            }
        } else {load = false;}
        count += 1;
    }
}

- (IBAction)goBtn:(id)sender {
    NSString* path = [[[NSBundle mainBundle] bundlePath] stringByDeletingLastPathComponent];
    
    for (int i = 0; i < 250; i++) {
        NSAutoreleasePool *loopPool = [[NSAutoreleasePool alloc] init];
        
        NSString* loc = [NSString stringWithFormat:@"%@/Maps To Be Replaced/Map %d.png",path,i];
        NSString* newLoc = [NSString stringWithFormat:@"%@/Replaced Maps/Map %d.png",path,i];
        if ([[NSFileManager defaultManager] fileExistsAtPath:loc]) {
            // Get an array containing the full filenames of all
            // files and directories selected.
            mapImg = [[NSImage alloc] initWithContentsOfFile: loc];
            originalImgView.image = mapImg;
            
            //Now for each replacer tile, fill out it's pixel array
            [mapImg size];
            NSData* data = [mapImg TIFFRepresentation];
            [data retain];
            NSBitmapImageRep *bitmap = [[NSBitmapImageRep alloc] initWithData:data];
            [data release];
            data = nil;
            
            for (int x = 0; x < 311; x++) {
                for (int y = 0; y < 315; y++) {
                    NSColor *color = [bitmap colorAtX:x y:y];
                    mapPixels[x][y][0] = [color redComponent];
                    mapPixels[x][y][1] = [color greenComponent];
                    mapPixels[x][y][2] = [color blueComponent];
                    mapPixels[x][y][3] = [color alphaComponent];
                }
            }
            [bitmap release];
            
            [self decipherMap];
            [self rebuildMap];
            
            
            NSData *imageData = [newMapImg TIFFRepresentation];
            NSBitmapImageRep *imageRep = [NSBitmapImageRep imageRepWithData:imageData];
            NSDictionary *imageProps = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:1.0] forKey:NSImageCompressionFactor];
            imageData = [imageRep representationUsingType:NSJPEGFileType properties:imageProps];
            [imageData writeToFile:newLoc atomically:NO];   
            
            
            [mapImg release];
            [newMapImg release];
            mapImg = nil;
            newMapImg = nil;
        }
        
        [loopPool drain];
    }
}
- (void)decipherMap {
    int mapStartX = 5;
    int mapStartY = 304;
    //For moving across tiles, add 44 to x and subtract 44 to y
    for (int xTile = 0; xTile < 7; xTile++) {
        for (int yTile = 0; yTile < 7; yTile++) {
            int tileStartX = mapStartX + xTile*44;
            int tileStartY = mapStartY - yTile*44;
            int tileEndX = tileStartX + 45;
            int tileEndY = tileStartY - 45;
            if (tileEndX > 311) tileEndX = 311;
            if (tileEndY > 315) tileEndY = 315;
            if (tileEndX < 0) tileEndX = 0;
            if (tileEndY < 0) tileEndY = 0;
            int tileNum = -1;
            //Plus a substantial amount of weight on shape instead of color
            //Color can be off tint, though never off tint enough to make the shape unrecognizeable.
            float shapeMatchWeight = 3.0;
            int bestMatch = 45*45*4 + 45*45*4*shapeMatchWeight; //Set it to the worst
            for (int t = 0; t < 250; t++) {
                if (replaceTiles[t] != nil) {
                    int matchCount = 0;
                    float matchCount2 = 0;
                    for (int x = tileStartX; x < tileEndX; x++) {
                        for (int y = tileStartY; y > tileEndY; y--) {
                            int tileLocX = x-tileStartX;
                            int tileLocY = y-tileStartY+44;
                            //Match by shape
                            matchCount +=round(fabs(mapPixels[x][y-1][0]-replaceTilesPixels[t][tileLocX][tileLocY][0]));
                            matchCount +=round(fabs(mapPixels[x][y-1][1]-replaceTilesPixels[t][tileLocX][tileLocY][1]));
                            matchCount +=round(fabs(mapPixels[x][y-1][2]-replaceTilesPixels[t][tileLocX][tileLocY][2]));
                            matchCount +=round(fabs(mapPixels[x][y-1][3]-replaceTilesPixels[t][tileLocX][tileLocY][3]));
                            //Match by color, make the color matcher only slightly less accurate
                            matchCount2 += ((int)abs(round(mapPixels[x][y-1][0]*100-replaceTilesPixels[t][tileLocX][tileLocY][0]*100)))/100.0;
                            matchCount2 +=((int)abs(round(mapPixels[x][y-1][1]*100-replaceTilesPixels[t][tileLocX][tileLocY][1]*100)))/100.0;
                            matchCount2 +=((int)abs(round(mapPixels[x][y-1][2]*100-replaceTilesPixels[t][tileLocX][tileLocY][2]*100)))/100.0;
                            matchCount2 +=((int)abs(round(mapPixels[x][y-1][3]*100-replaceTilesPixels[t][tileLocX][tileLocY][3]*100)))/100.0;
                        }
                    }
                    if ((matchCount*shapeMatchWeight+matchCount2) < bestMatch) {tileNum = t; bestMatch = matchCount*shapeMatchWeight+matchCount2;}
                }
            }
            //If the accuracy isn't above 80%, don't use it.
            float top = (45.0*45*4 *2);
            float percentage = (top-bestMatch*1.0) * 100.0 / top;
            if (percentage < 90.0) {tileNum = -1;} else {NSLog(@"Percentage: %f",percentage);}
            map[xTile][yTile] = tileNum;
        }
    }
    //Special tile connections, water to land.
    int modifiedMap[7][7];
    for (int x = 0; x < 7; x++) {
        for (int y = 0; y < 7; y++) {
            modifiedMap[x][y] = map[x][y];
        }
    }
    int tileWater = 15, tileWaterLeft = 16, tileWaterRight = 17, tileWaterBottom = 18, tileWaterTop = 19, tileWaterTopRight = 20, tileWaterTopLeft = 21, tileWaterBottomRight = 22, tileWaterBottomLeft = 23;
    int tileWaterEdgeBottomLeft = 24, tileWaterEdgeBottomRight = 25, tileWaterEdgeTopRight = 27, tileWaterEdgeTopLeft = 26;
    for (int x = 0; x < 7; x ++) {
        for (int y = 0; y < 7; y ++) {
            if (map[x][y] == tileWater) {
                //Normal Water Edges
                //If tile doesn't exist, assume to be water.
                int tLeft = tileWater, tRight = tileWater, tUp = tileWater, tDown = tileWater;
                int tDownLeft = tileWater, tDownRight = tileWater, tUpLeft = tileWater, tUpRight = tileWater;
                
                //Get surrounding tiles
                if (x-1 >= 0) {
                    tLeft = map[x-1][y];
                    if (y-1 >= 0) tDownLeft = map[x-1][y-1];
                    if (y+1 < 7) tUpLeft = map[x-1][y+1];
                }
                if (x+1 < 7) {
                    tRight = map[x+1][y];
                    if (y-1 >= 0) tDownRight = map[x+1][y-1];
                    if (y+1 < 7) tUpRight = map[x+1][y+1];
                }
                if (y-1 >= 0) tDown = map[x][y-1];
                if (y+1 < 7) tUp = map[x][y+1];
                
                //Set Water Edges
                if (tLeft != tileWater) modifiedMap[x][y] = tileWaterLeft;
                if (tRight != tileWater) modifiedMap[x][y] = tileWaterRight;
                if (tDown != tileWater) modifiedMap[x][y] = tileWaterBottom;
                if (tUp != tileWater) modifiedMap[x][y] = tileWaterTop;
                
                //Curve Water Edges
                if (tDown != tileWater) {
                    BOOL left = FALSE, right = FALSE;
                    if (tLeft != tileWater) {
                        modifiedMap[x][y] = tileWaterBottomLeft;
                        left = TRUE;
                    }
                    if (tRight != tileWater) {
                        modifiedMap[x][y] = tileWaterBottomRight;
                        right = TRUE;
                    }
                    if (!left && !right){modifiedMap[x][y] = tileWaterBottom;}
                    
                }
                if (tUp != tileWater) {
                    BOOL left = FALSE, right = FALSE;
                    if (tLeft != tileWater) {
                        modifiedMap[x][y] = tileWaterTopLeft;
                        left = TRUE;
                    }
                    if (tRight != tileWater) {
                        modifiedMap[x][y] = tileWaterTopRight;
                        right = TRUE;
                    }
                    if (!left && !right){modifiedMap[x][y] = tileWaterTop;}
                }
                //Diagnol Land Pieces
                if (tLeft == tileWater && tRight == tileWater && tUp == tileWater && tDown == tileWater) {
                    if (tDownLeft != tileWater) {modifiedMap[x][y] = tileWaterEdgeBottomLeft;}
                    if (tDownRight != tileWater) {modifiedMap[x][y] = tileWaterEdgeBottomRight;}
                    if (tUpLeft != tileWater) {modifiedMap[x][y] = tileWaterEdgeTopLeft;}
                    if (tUpRight != tileWater) {modifiedMap[x][y] = tileWaterEdgeTopRight;}
                }
            }
        }
    }
    for (int x = 0; x < 7; x++) {
        for (int y = 0; y < 7; y++) {
            map[x][y] = modifiedMap[x][y];
        }
    }
}
- (void)rebuildMap {
    newMapImg = [[NSImage alloc] initWithSize:NSMakeSize(44*7, 44*7)];
	[newMapImg lockFocus];
    NSRect imageRect = NSMakeRect(0,0,44, 44);
    for (int x = 0; x < 7; x++) {
        for (int y = 0; y < 7; y++) {
            if (map[x][y] != -1) {
                NSImage* tile = tiles[map[x][y]];
                if (tile != nil) {
                    [tile drawAtPoint:NSMakePoint((float)(x)*44,(float)(y)*44) fromRect:imageRect operation:NSCompositeSourceOver fraction:1.0];
                }
            }
        }
    }
    //[drawtile drawAtPoint:NSMakePoint((float)(xpos)*xworldresize,(float)(ypos)*yworldresize) fromRect:imageRect operation:NSCompositeSourceOver fraction:1.0 ];
    [newMapImg unlockFocus];
    newImgView.image = newMapImg;
    [newImgView display];
    [originalImgView display];
}

@end

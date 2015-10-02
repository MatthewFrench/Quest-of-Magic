//
//  AppDelegate.h
//  QoM Tile Replacer
//
//  Created by Matthew French on 10/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSImageView *originalImgView, *newImgView;
    NSImage* mapImg;
    NSImage* newMapImg;
    int map[7][7];
    float mapPixels[311][315][4];
    
    NSImage* tiles[250];
    NSImage* replaceTiles[250];
    float replaceTilesPixels[250][45][45][4];
}

@property (assign) IBOutlet NSWindow *window;

- (IBAction)goBtn:(id)sender;

- (void)decipherMap;
- (void)rebuildMap;

@end

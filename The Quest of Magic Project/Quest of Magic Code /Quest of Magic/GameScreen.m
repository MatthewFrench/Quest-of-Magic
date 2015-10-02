//
//  Quest_of_MagicViewController.m
//  Quest of Magic
//
//  Created by Matthew French on 4/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GameScreen.h"
#import "Quest_of_MagicAppDelegate.h"
Quest_of_MagicAppDelegate *delegate;

@implementation GameScreen

- (void)loadCard {
    //For easier finding
    if (gameData.card < 113) {
        switch (gameData.card) {
            case 20: {
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                gameData.area = @"surface";
                gameData.northcard = gameData.card - 0;
                gameData.southcard = gameData.card + 0;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 0;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                if (gameData.card20event > -1) gameData.card20event = 0;
                [self startTimer:100];
                break;
            }
            case 21: {
                if (gameData.brigandevent == 1) {[self goToCard:49];} else {
                    
                    gameData.area = @"surface";
                    gameData.northcard = gameData.card - 0;
                    gameData.southcard = gameData.card + 0;
                    gameData.eastcard = gameData.card + 1;
                    gameData.westcard = gameData.card - 1;
                    gameData.moveY = gameData.gridY;
                    gameData.moveX = gameData.gridX;
                    
                    [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                    npcSprite14 = [self updateSprite:npcSprite14 x:93 y:49 image:@"HumanM4.gif"];
                    npcSprite13 = [self updateSprite:npcSprite13 x:93 y:137 image:@"HumanF4.gif"];
                    
                    if (gameData.RECENTCARD == 49) {
                        [self print:@"Human Sentry" message:@"Hurray! We defeated the brigands!"];
                    }
                }
                break;
            }
            case 22: {
                gameData.area = @"surface";
                gameData.northcard = gameData.card + 1;
                gameData.southcard = gameData.card + 0;
                gameData.eastcard = gameData.card + 0;
                gameData.westcard = gameData.card - 1;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                break;
            }
            case 23: {
                
                gameData.area = @"surface";
                gameData.northcard = 42;
                gameData.southcard = gameData.card - 1;
                gameData.eastcard = gameData.card + 0;
                gameData.westcard = gameData.card - 0;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                break;
            }
            case 24: {
                gameData.area = @"surface";
                gameData.northcard = gameData.card + 0;
                gameData.southcard = gameData.card - 0;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = 42;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                break;
            }
            case 25: {
                gameData.area = @"surface";
                gameData.northcard = gameData.card + 1;
                gameData.southcard = gameData.card - 0;
                gameData.eastcard = gameData.card + 0;
                gameData.westcard = gameData.card - 1;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                break;
            }
            case 26: {
                gameData.area = @"surface";
                gameData.northcard = gameData.card + 0;
                gameData.southcard = gameData.card - 1;
                gameData.eastcard = gameData.card + 0;
                gameData.westcard = gameData.card + 1;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                break;
            }
            case 27: {
                gameData.area = @"surface";
                gameData.northcard = gameData.card + 1;
                gameData.southcard = gameData.card - 0;
                gameData.eastcard = gameData.card - 1;
                gameData.westcard = gameData.card + 0;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                break;
            }
            case 28: {
                gameData.area = @"surface";
                gameData.northcard = gameData.card + 0;
                gameData.southcard = gameData.card - 1;
                gameData.eastcard = gameData.card - 0;
                gameData.westcard = gameData.card + 0;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                break;
            }
            case 29: {
                gameData.area = @"surface";
                gameData.northcard = gameData.card + 0;
                gameData.southcard = gameData.card - 0;
                gameData.eastcard = gameData.card - 0;
                gameData.westcard = gameData.card + 0;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                break;
            }
            case 30: {
                gameData.area = @"surface";
                gameData.northcard = gameData.card + 2;
                gameData.southcard = gameData.card - 0;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card + 0;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                break;
            }
            case 31: {
                gameData.area = @"stone basin";
                gameData.northcard = gameData.card + 0;
                gameData.southcard = gameData.card - 0;
                gameData.eastcard = gameData.card + 0;
                gameData.westcard = gameData.card - 1;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                gameData.NPCalive = 1;
                gameData.NPCspeed = 200;
                gameData.NPCgridY = 4;
                gameData.NPCgridX = 4;
                gameData.NPCspriteY = gameData.NPCgridY * 44;
                gameData.NPCspriteY = gameData.NPCspriteY - 39;
                gameData.NPCspriteX = gameData.NPCgridX * 44;
                gameData.NPCspriteX = gameData.NPCspriteX - 39;
                gameData.NPCmoveY = gameData.NPCgridY;
                gameData.NPCmoveX = gameData.NPCgridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                npcSprite14 = [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:@"DwarfM5.gif"];
                
                
                if (gameData.NPCalive == 0) gameData.NPCspeed = 100;
                [self startTimer:gameData.NPCspeed];
                break;
            }  
            case 32: {
                gameData.area = @"surface";
                gameData.northcard = gameData.card + 0;
                gameData.southcard = gameData.card - 2;
                gameData.eastcard = gameData.card - 0;
                gameData.westcard = gameData.card + 0;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                break;
            }  
            case 33: {
                gameData.area = @"surface";
                gameData.northcard = gameData.card + 1;
                gameData.southcard = 42;
                gameData.eastcard = gameData.card - 0;
                gameData.westcard = gameData.card + 0;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                break;
            } 
            case 34: {
                gameData.area = @"surface";
                gameData.northcard = gameData.card + 0;
                gameData.southcard = gameData.card - 1;
                gameData.eastcard = gameData.card - 0;
                gameData.westcard = gameData.card + 1;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                break;
            } 
            case 35: {
                gameData.area = @"surface";
                gameData.northcard = gameData.card + 0;
                gameData.southcard = gameData.card - 1;
                gameData.eastcard = gameData.card - 1;
                gameData.westcard = gameData.card + 1;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                break;
            }
            case 36: {
                gameData.area = @"surface";
                gameData.northcard = gameData.card + 2;
                gameData.southcard = gameData.card - 0;
                gameData.eastcard = gameData.card - 1;
                gameData.westcard = gameData.card + 1;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                gameData.NPCalive = 1;
                gameData.NPCspeed = 200;
                gameData.NPCgridY = 3;
                gameData.NPCgridX = 3;
                gameData.NPCspriteY = gameData.NPCgridY * 44;
                gameData.NPCspriteY = gameData.NPCspriteY - 39;
                gameData.NPCspriteX = gameData.NPCgridX * 44;
                gameData.NPCspriteX = gameData.NPCspriteX - 39;
                gameData.NPCmoveY = gameData.NPCgridY;
                gameData.NPCmoveX = gameData.NPCgridX;
                npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:@"ElfF5.gif"];
                if (gameData.NPCalive == 0) gameData.NPCspeed = 100;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 37: {
                gameData.area = @"surface";
                gameData.northcard = gameData.card + 0;
                gameData.southcard = gameData.card - 0;
                gameData.eastcard = gameData.card - 1;
                gameData.westcard = gameData.card + 0;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                break;
            }
            case 38: {
                gameData.area = @"surface";
                gameData.northcard = gameData.card + 0;
                gameData.southcard = gameData.card - 2;
                gameData.eastcard = gameData.card - 0;
                gameData.westcard = gameData.card + 0;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                break;
            }
            case 39: {
                [gameData.theAudio stop];
                gameData.area = @"indoors";
                gameData.northcard = gameData.card + 0;
                gameData.southcard = gameData.card - 0;
                gameData.eastcard = gameData.card - 0;
                gameData.westcard = gameData.card + 0;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                gameData.NPCalive = 1;
                gameData.NPCspeed = 200;
                if (gameData.RECENTCARD == 20) {
                    gameData.NPCgridY = 3;
                    gameData.NPCgridX = 3;
                    gameData.NPCspriteY = gameData.NPCgridY * 44;
                    gameData.NPCspriteY = gameData.NPCspriteY - 39;
                    gameData.NPCspriteX = gameData.NPCgridX * 44;
                    gameData.NPCspriteX = gameData.NPCspriteX - 39;
                    gameData.NPCmoveY = gameData.NPCgridY;
                    gameData.NPCmoveX = gameData.NPCgridX;
                }
                
                npcSprite14 = [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:@"HumanM2.gif"];
                if (gameData.NPCalive == 0) gameData.NPCspeed = 100;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 40: {
                [gameData.theAudio stop];
                gameData.area = @"indoors";
                gameData.northcard = gameData.card + 0;
                gameData.southcard = gameData.card - 0;
                gameData.eastcard = gameData.card - 0;
                gameData.westcard = gameData.card + 0;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                gameData.NPCalive = 1;
                gameData.NPCspeed = 200;
                gameData.NPCgridY = 4;
                gameData.NPCgridX = 5;
                gameData.NPCspriteY = gameData.NPCgridY * 44;
                gameData.NPCspriteY = gameData.NPCspriteY - 39;
                gameData.NPCspriteX = gameData.NPCgridX * 44;
                gameData.NPCspriteX = gameData.NPCspriteX - 39;
                gameData.NPCmoveY = gameData.NPCgridY;
                gameData.NPCmoveX = gameData.NPCgridX;
                
                npcSprite14 = [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:@"HumanF3.gif"];
                if (gameData.NPCalive == 0) gameData.NPCspeed = 100;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 41: {
                [gameData.theAudio stop];
                gameData.area = @"indoors";
                gameData.northcard = gameData.card + 0;
                gameData.southcard = gameData.card - 0;
                gameData.eastcard = gameData.card - 0;
                gameData.westcard = gameData.card + 0;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                gameData.NPCalive = 1;
                gameData.NPCspeed = 200;
                if (gameData.RECENTCARD == 20) {
                    gameData.NPCgridY = 3;
                    gameData.NPCgridX = 4;
                    gameData.NPCspriteY = gameData.NPCgridY * 44;
                    gameData.NPCspriteY = gameData.NPCspriteY - 39;
                    gameData.NPCspriteX = gameData.NPCgridX * 44;
                    gameData.NPCspriteX = gameData.NPCspriteX - 39;
                    gameData.NPCmoveY = gameData.NPCgridY;
                    gameData.NPCmoveX = gameData.NPCgridX;
                }
                
                npcSprite14 = [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:@"HumanF6.gif"];
                if (gameData.NPCalive == 0) gameData.NPCspeed = 100;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 42: {
                if (gameData.artifact == 1) {
                    [self goToCard:155];
                } else {
                    [gameData.theAudio stop];
                    gameData.area = @"surface";
                    gameData.northcard = 33;
                    gameData.southcard = 23;
                    gameData.eastcard = 24;
                    gameData.westcard = gameData.card + 0;
                    gameData.moveY = gameData.gridY;
                    gameData.moveX = gameData.gridX;
                    
                    gameData.NPCalive = 0;
                    gameData.NPC2alive = 0;
                    
                    [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                    
                    if (gameData.rareitembuyertime == 30) npcSprite10 = [self updateSprite:npcSprite10 x:93 y:220 image:@"GnomeM1.gif"];
                }
                break;
            }
            case 49: {
                //Brigand event
                
                if (gameData.brigandevent == 1) {
                    gameData.playerX = 269;
                    gameData.playerY = 137;
                    
                    tileSprite1 = [self updateSprite:tileSprite1 x:49 y:93 image:@"HumanM4.gif"];
                    tileSprite2 = [self updateSprite:tileSprite2 x:49 y:181 image:@"HumanF4.gif"];
                    tileSprite3 = [self updateSprite:tileSprite3 x:93 y:93 image:@"BrigandM1.gif"];
                    tileSprite4 = [self updateSprite:tileSprite4 x:93 y:181 image:@"BrigandM1.gif"];
                    tileSprite5 = [self updateSprite:tileSprite5 x:137 y:137 image:@"BrigandM2.gif"];
                    
                    npcSprite12 =[self updateSprite:npcSprite12 x:-500 y:-500 image:@"Player Attack Marker.gif"];
                    npcSprite11 =[self updateSprite:npcSprite11 x:-500 y:-500 image:@"Enemy Attack Marker.gif"];
                    
                    [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
                    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(special) userInfo:nil repeats:NO];
                } else if (gameData.brigandevent == 6) {
                    gameData.playerX = 269;
                    gameData.playerY = 137;
                    
                    tileSprite1 = [self updateSprite:tileSprite1 x:49 y:93 image:@"HumanM4.gif"];
                    tileSprite2 = [self updateSprite:tileSprite2 x:49 y:181 image:@"HumanF4.gif"];
                    tileSprite3 = [self updateSprite:tileSprite3 x:93 y:93 image:@"BrigandM1.gif"];
                    tileSprite4 = [self updateSprite:tileSprite4 x:93 y:181 image:@"BrigandM1.gif"];
                    tileSprite5 = [self updateSprite:tileSprite5 x:93 y:137 image:@"BrigandM2.gif"];
                    
                    npcSprite12 =[self updateSprite:npcSprite12 x:-500 y:-500 image:@"Player Attack Marker.gif"];
                    npcSprite11 =[self updateSprite:npcSprite11 x:-500 y:-500 image:@"Enemy Attack Marker.gif"];
                    
                    [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
                    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(special) userInfo:nil repeats:NO];
                } else if (gameData.brigandevent == 9) {
                    gameData.playerX = 269;
                    gameData.playerY = 137;
                    
                    tileSprite1 = [self updateSprite:tileSprite1 x:93 y:93 image:@"HumanM4.gif"];
                    tileSprite2 = [self updateSprite:tileSprite2 x:49 y:137 image:@"HumanF4.gif"];
                    tileSprite5 = [self updateSprite:tileSprite5 x:93 y:137 image:@"BrigandM2.gif"];
                    
                    npcSprite12 =[self updateSprite:npcSprite12 x:-500 y:-500 image:@"Player Attack Marker.gif"];
                    npcSprite11 =[self updateSprite:npcSprite11 x:-500 y:-500 image:@"Enemy Attack Marker.gif"];
                    
                    [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
                    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(special) userInfo:nil repeats:NO];
                }
                break;
            }
            case 50: {
                gameData.area = @"lv1";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 2 0 0 1 1 0 0 0 0 0 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 3 1 1 1";
                gameData.northcard = gameData.card - 6;
                gameData.southcard = 52;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0)npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 51: {
                gameData.area = @"lv1";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 0 1 0 1 1 0 0 1 0 0 1 1 0 1 0 0 0 1 1 0 0 0 0 0 1 1 1 1 1 1 0 1";
                gameData.northcard = gameData.card - 6;
                gameData.southcard = 53;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0)npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                if (gameData.lv1TC1 == 0) treasureChest5 = [self updateSprite:treasureChest5 x:93 y:93 image:@"Treasure Chest.gif"];
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 52: {
                gameData.area = @"lv1";
                gameData.gridlayout = @"1 1 1 2 1 1 1 1 0 1 0 1 0 1 1 1 0 0 0 0 1 1 0 0 1 0 1 1 1 1 0 0 1 0 1 1 0 0 0 0 0 1 1 1 1 1 0 1 1";
                gameData.northcard = 50;
                gameData.southcard = 55;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14 = [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13 = [self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                if (gameData.lv1E1 == 0) npcSprite12 = [self updateSprite:npcSprite12 x:137 y:49 image:@"GoblinM1.gif"];
                if (gameData.lv1TC2 == 0) treasureChest5 = [self updateSprite:treasureChest5 x:225 y:49 image:@"Treasure Chest.gif"];
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 53: {
                gameData.area = @"lv1";
                gameData.gridlayout = @"1 1 1 1 1 0 1 1 0 1 0 0 0 1 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 1 0 0 0 0 1 1 0 0 1 0 0 1 1 0 1 1 0 1 1";
                gameData.northcard = 51;
                gameData.southcard = 56;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0)npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 54: {
                gameData.area = @"lv1";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 0 1 0 0 0 1 2 0 0 0 0 1 1 0 0 0 1 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 6;
                gameData.southcard = gameData.card + 6;
                gameData.eastcard = 55;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 55: {
                gameData.area = @"lv1";
                gameData.gridlayout = @"1 1 1 1 0 1 1 1 0 0 1 0 0 0 0 0 0 1 1 1 1 1 1 0 1 0 0 0 1 0 0 1 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1";
                gameData.northcard = 52;
                gameData.southcard = gameData.card + 6;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 56: {
                gameData.area = @"lv1";
                gameData.gridlayout = @"1 0 1 1 0 1 1 0 0 1 1 0 1 1 1 1 1 0 0 0 1 0 0 0 0 1 0 1 1 1 0 1 0 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1";
                gameData.northcard = 53;
                gameData.southcard = gameData.card + 6;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 60: {
                gameData.area = @"lv2";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 0 1 0 0 0 0 1 0 0 0 0 1 0 1 0 0 0 1 1 1 1 1 0 0 0 0 1 1 0 0 1 0 0 1 1 0 1 1 1 0 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 61: {
                gameData.area = @"lv2";
                gameData.gridlayout = @"1 1 1 1 1 1 1 0 0 0 0 0 0 1 0 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 0 0 1 1 1 1 0 0 0 1 1 1 1 5 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                if (gameData.lv2TC1 == 0) treasureChest5 = [self updateSprite:treasureChest5 x:225 y:49 image:@"Treasure Chest.gif"];
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 62: {
                gameData.area = @"lv2";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 0 0 0 1 0 0 0 0 0 6 1 1 1 0 0 0 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                if (gameData.lv2B1 == 0) npcSprite12 = [self updateSprite:npcSprite12 x:93 y:137 image:@"Bugbear.gif"];
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 63: {
                gameData.area = @"lv2";
                gameData.gridlayout = @ "1 0 1 1 1 0 1 1 0 0 0 1 0 0 1 0 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                if (gameData.lv2TC2 == 0) treasureChest5 = [self updateSprite:treasureChest5 x:225 y:181 image:@"Treasure Chest.gif"];
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 64: {
                gameData.area = @"lv2";
                gameData.gridlayout = @"1 1 1 3 1 1 1 0 0 0 0 0 0 0 1 0 1 0 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 0 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 65: {
                gameData.area = @"lv2";
                gameData.gridlayout = @"1 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 0 1 0 1 1 1 0 0 1 0 0 1 1 0 1 1 1 0 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                if (gameData.lv2E1 == 0) npcSprite12=[self updateSprite:npcSprite12 x:93 y:93 image:@"GoblinM3.gif"];
                if (gameData.lv2TC3 == 0) treasureChest5 = [self updateSprite:treasureChest5 x:93 y:225 image:@"Treasure Chest.gif"];
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 67: {
                gameData.area = @"lv2";
                gameData.gridlayout = @"1 1 1 1 1 0 1 1 0 0 0 0 0 1 1 1 0 1 0 1 1 1 0 0 0 0 0 1 1 0 1 0 1 0 1 1 0 0 0 0 0 1 1 1 0 1 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 68: {
                gameData.area = @"lv2";
                gameData.gridlayout = @"1 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0 0 0 0 0 1 1 1 0 1 1 0 1 1 1 0 6 0 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 70: {
                gameData.area = @"lv2";
                gameData.gridlayout = @"1 1 0 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 1 0 1 1 0 1 1 1 0 0 1 0 1 0 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                if (gameData.lv2E2 == 0) npcSprite12 = [self updateSprite:npcSprite12 x:93 y:224 image:@"GoblinM4.gif"];
                if (gameData.lv2TC5 == 0) treasureChest5 = [self updateSprite:treasureChest5 x:181 y:49 image:@"Treasure Chest.gif"];
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 71: {
                if (gameData.wizardevent == 0) {
                    [self goToCard:72];
                } else {
                    gameData.area = @"lv2";
                    gameData.gridlayout = @"1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 1 0 1 0 1 0 0 0 0 0 0 1 1 0 1 0 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1";
                    gameData.northcard = gameData.card - 3;
                    gameData.southcard = gameData.card + 3;
                    gameData.eastcard = gameData.card + 1;
                    gameData.westcard = gameData.card - 1;
                    gameData.playerY = gameData.gridY * 44;
                    gameData.playerY = gameData.playerY - 39;
                    gameData.playerX = gameData.gridX * 44;
                    gameData.playerX = gameData.playerX - 39;
                    gameData.moveY = gameData.gridY;
                    gameData.moveX = gameData.gridX;
                    
                    gameData.NPCspeed = 15;
                    gameData.NPCsprite = @"Treasure Chest.gif";
                    if (gameData.TCpuzzlecomplete < 2) {
                        //if (gameData.RECENTCARD == 70 || gameData.RECENTCARD == 72) {
                        gameData.NPCgridY = 2;
                        gameData.NPCgridX = 6;
                        gameData.NPCspriteY = gameData.NPCgridY * 44;
                        gameData.NPCspriteY = gameData.NPCspriteY - 39;
                        gameData.NPCspriteX = gameData.NPCgridX * 44;
                        gameData.NPCspriteX = gameData.NPCspriteX - 39;
                        gameData.NPCmoveY = gameData.NPCgridY;
                        gameData.NPCmoveX = gameData.NPCgridX;
                        gameData.NPCaction = 1;
                        gameData.NPCalive = 0;
                        //}
                        npcSprite14 = [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                    }
                    
                    //playerImage = [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY image:gameData.playersprite];
                    
                    //if (gameData.NPCalive > 0) npcSprite14 = [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                    
                    [self startTimer:gameData.NPCspeed];
                    
                }
                break;
            }
            case 72: {
                gameData.NPCgridY = 2;
                gameData.NPCgridX = 6;
                gameData.NPCspriteY = gameData.NPCgridY * 44;
                gameData.NPCspriteY = gameData.NPCspriteY - 39;
                gameData.NPCspriteX = gameData.NPCgridX * 44;
                gameData.NPCspriteX = gameData.NPCspriteX - 39;
                gameData.NPCmoveY = gameData.NPCgridY;
                gameData.NPCmoveX = gameData.NPCgridX;
                gameData.NPCsprite = @"Treasure Chest.gif";
                
                gameData.playerX = 5;
                gameData.playerY = 137;
                
                if (gameData.wizardevent == 0) {
                    [self updateSprite:playerImage x:5 y:137];
                    //playerImage = [self updateSprite:playerImage x:5 y:137 image:gameData.playersprite];
                    npcSprite14 = [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                    npcSprite11 = [self updateSprite:npcSprite11 x:137 y:137 image:@"ElfM8.gif"];
                    
                    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(special) userInfo:nil repeats:NO];
                }
                break;
            }
            case 75: {
                gameData.area = @"lv3";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 0 1 0 0 0 0 1 0 6 0 1 1 1 1 0 0 0 0 0 0 1 1 0 1 0 1 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                if (gameData.lv3TC3 == 0) treasureChest5 = [self updateSprite:treasureChest5 x:181 y:225 image:@"Treasure Chest.gif"];
                if (gameData.lv3M2 == 0) treasureChest4 = [self updateSprite:treasureChest4 x:93 y:225 image:@"Treasure Chest.gif"];
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 76: {
                gameData.area = @"lv3";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 0 1 0 0 1 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1";
                gameData.northcard = gameData.card - 2;
                gameData.southcard = gameData.card + 2;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                if (gameData.lv3E1 == 0) npcSprite12 = [self updateSprite:npcSprite12 x:93 y:137 image:@"OrcM3.gif"];
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 77: {
                gameData.area = @"lv3";
                gameData.gridlayout = @"1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 0 1 1 1 0 0 1 0 0 0 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 5 1 1 1";
                gameData.northcard = gameData.card - 2;
                gameData.southcard = gameData.card + 2;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = 85;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 78: {
                gameData.area = @"lv3";
                gameData.gridlayout = @"1 1 1 1 1 0 1 1 0 0 1 0 0 1 1 1 0 0 0 0 1 0 0 0 0 1 0 1 1 0 0 0 1 0 1 1 0 1 0 0 0 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 2;
                gameData.southcard = gameData.card + 2;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                if (gameData.lv3TC2 == 0) {treasureChest5=[self updateSprite:treasureChest5 x:49 y:49 image:@"Treasure Chest.gif"];}
                if (gameData.lv3M1 == 0) {treasureChest4=[self updateSprite:treasureChest4 x:225 y:181 image:@"Treasure Chest.gif"];}
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 79: {
                gameData.area = @"lv3";
                gameData.gridlayout = @"1 1 1 2 1 1 1 1 1 1 0 1 1 1 1 0 0 0 0 0 1 1 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1";
                gameData.northcard = gameData.card - 2;
                gameData.southcard = gameData.card + 2;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.tilepuzzlecomplete == 0) {
                    gameData.greentiles = 2;
                    gameData.tile1 = 0;
                    gameData.tile2 = 1;
                    gameData.tile3 = 0;
                    gameData.tile4 = 1;
                    gameData.tile5 = 0;
                    tileSprite1 = [self updateSprite:tileSprite1 x:49 y:137 image:@"Red Glow.gif"];
                    tileSprite2 = [self updateSprite:tileSprite2 x:93 y:137 image:@"Green Glow.gif"];
                    tileSprite3 = [self updateSprite:tileSprite3 x:137 y:137 image:@"Red Glow.gif"];
                    tileSprite4 = [self updateSprite:tileSprite4 x:181 y:137 image:@"Green Glow.gif"];
                    tileSprite5 = [self updateSprite:tileSprite5 x:225 y:137 image:@"Red Glow.gif"];
                }
                
                break;
            }
            case 80: {
                gameData.area = @"lv3";
                gameData.gridlayout = @"1 1 1 1 1 1 1 0 0 0 0 0 0 1 1 0 0 0 1 0 0 1 0 0 0 0 0 1 1 0 0 1 0 1 1 1 0 0 0 0 1 1 1 0 0 1 1 1 1";
                gameData.northcard = gameData.card - 2;
                gameData.southcard = gameData.card + 2;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = 87;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 81: {
                gameData.area = @"lv3";
                gameData.gridlayout = @"1 1 1 0 1 1 1 1 1 1 0 0 0 1 0 0 0 1 1 0 1 1 1 0 1 0 0 1 1 0 0 1 0 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 2;
                gameData.southcard = gameData.card + 2;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                if (gameData.lv3E2 == 0) npcSprite12=[self updateSprite:npcSprite12 x:93 y:137 image:@"OrcM2.gif"];
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 82: {
                gameData.area = @"lv3";
                gameData.gridlayout = @"1 0 0 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 1 1 0 0 1 0 0 0 1 0 0 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 2;
                gameData.southcard = gameData.card + 2;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                if (gameData.lv3E3 == 0) npcSprite12=[self updateSprite:npcSprite12 x:181 y:225 image:@"OrcM1.gif"];
                if (gameData.lv3TC1 == 0) treasureChest5=[self updateSprite:treasureChest5 x:225 y:49 image:@"Treasure Chest.gif"];
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 83: {
                gameData.area = @"lv3";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 0 1 0 0 1 0 0 1 0 0 0 1 1 1 0 0 1 0 1 0 0 0 1 0 0 1 1 1 0 1 1 0 1";
                gameData.northcard = gameData.card - 1;
                gameData.southcard = gameData.card + 1;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                if (gameData.lv3TC4 == 0) treasureChest5=[self updateSprite:treasureChest5 x:181 y:225 image:@"Treasure Chest.gif"];
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 84: {
                gameData.area = @"lv3";
                gameData.gridlayout = @"1 1 0 1 1 0 1 1 0 0 1 6 0 1 1 0 0 1 0 0 1 1 0 1 1 0 0 1 1 0 0 1 0 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 1;
                gameData.southcard = gameData.card + 1;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 85: {
                gameData.area = @"lv3";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 1;
                gameData.southcard = gameData.card + 1;
                gameData.eastcard = 77;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                
                if (gameData.lv3TC5 == 0) treasureChest5=[self updateSprite:treasureChest5 x:137 y:137 image:@"Treasure Chest.gif"];
                
                break;
            }
            case 86: {
                gameData.area = @"lv3";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 0 0 0 1 1 0 1 0 1 0 1 1 0 0 0 0 0 1 1 1 0 1 1 1 1";
                gameData.northcard = gameData.card - 1;
                gameData.southcard = gameData.card + 1;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                
                if (gameData.lv3TC6 == 0) treasureChest5=[self updateSprite:treasureChest5 x:137 y:49 image:@"Treasure Chest.gif"];
                
                break;
            }
            case 87: {
                gameData.area = @"lv3";
                gameData.gridlayout = @"1 1 0 1 1 1 1 1 0 0 1 0 0 0 1 0 1 0 0 1 1 1 0 0 0 0 0 1 1 0 0 1 0 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 1;
                gameData.southcard = gameData.card + 1;
                gameData.eastcard = 80;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 91: {
                gameData.area = @"lv4";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 0 0 1 1 1 0 1 0 0 0 1 1 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1 0 1 1 1";
                gameData.northcard = gameData.card - 1;
                gameData.southcard = gameData.card + 1;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv4TC1 == 0) treasureChest5=[self updateSprite:treasureChest5 x:49 y:137 image:@"Treasure Chest.gif"];
                if (gameData.lv4TC2 == 0) treasureChest6=[self updateSprite:treasureChest6 x:225 y:225 image:@"Treasure Chest.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 92: {
                gameData.area = @"lv4";
                gameData.gridlayout = @"1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 6 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 5 1 1 1";
                gameData.northcard = gameData.card - 1;
                gameData.southcard = gameData.card + 1;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv4B1 == 0) npcSprite12=[self updateSprite:npcSprite12 x:137 y:137 image:@"Beholder.gif"];
                gameData.cardSpawnsNPCs = FALSE;
                break;
            }
            case 93: {
                gameData.area = @"lv4";
                gameData.gridlayout = @"1 1 1 3 1 1 1 1 1 0 0 0 0 0 1 1 1 1 0 0 1 1 0 0 1 1 1 1 1 0 0 0 0 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 1;
                gameData.southcard = gameData.card + 1;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv4E1 == 0) npcSprite12=[self updateSprite:npcSprite12 x:181 y:181 image:@"ImpM2.gif"];
                if (gameData.lv4TC3 == 0) treasureChest5=[self updateSprite:treasureChest5 x:49 y:181 image:@"Treasure Chest.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 94: {
                gameData.area = @"lv4";
                gameData.gridlayout = @"1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 0 0 0 0 1 1 1 1 0 1 0 1 1 1 0 0 0 0 0 1 0 0 1 0 0 1 1 1 1 1 0 1 1 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 95: {
                gameData.area = @"lv4";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 1 0 1 0 1 1 0 1 1 1 0 1 1 0 6 1 0 0 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 96: {
                gameData.area = @"lv4";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 0 1 0 0 1 1 0 0 1 0 0 1 1 1 0 1 1 0 1 1 0 0 1 0 0 0 1 1 1 1 0 0 0";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv4TC4 == 0) treasureChest5=[self updateSprite:treasureChest5 x:49 y:225 image:@"Treasure Chest.gif"];
                if (gameData.lv4E2 == 0) npcSprite12=[self updateSprite:npcSprite12 x:225 y:181 image:@"ImpM3.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 97: {
                gameData.area = @"lv4";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 0 1 1 0 1 1 1 1 1 0 0 1 1 0 0 1 0 1 1 0 0 0 1 0 0 1 0 0 0 1 1 0 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv4TC5 == 0) treasureChest5=[self updateSprite:treasureChest5 x:93 y:93 image:@"Treasure Chest.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 98: {
                gameData.area = @"lv4";
                gameData.gridlayout = @"1 1 1 0 1 1 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 1 0 0 0 0 0 1 1 0 0 0 1 0 1 1 1 0 0 1 0 0 1 1 1 0 1 1 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 5;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 99: {
                if (gameData.brigandevent == 0) { gameData.brigandevent = 1;}
                
                gameData.area = @"lv4";
                gameData.gridlayout = @"1 1 1 1 0 1 1 1 0 0 1 0 0 1 1 0 0 0 0 0 1 1 1 0 1 1 1 1 1 0 0 1 0 0 1 0 0 0 1 0 0 0 1 1 1 1 0 1 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 5;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv4M1 == 0) treasureChest4=[self updateSprite:treasureChest4 x:181 y:181 image:@"Treasure Chest.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 100: {
                gameData.area = @"lv4";
                gameData.gridlayout = @"1 1 1 1 0 0 0 1 0 0 0 0 0 0 1 0 0 1 0 0 0 1 0 0 1 1 0 1 1 0 0 0 0 0 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 5;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 101: {
                gameData.area = @"lv4";
                gameData.gridlayout = @"0 0 0 1 1 0 1 0 1 0 1 0 0 1 0 0 0 0 0 0 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 5;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv4E3 == 0) npcSprite12=[self updateSprite:npcSprite12 x:137 y:93 image:@"ImpM3.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 102: {
                gameData.area = @"lv4";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 0 0 1 1 0 0 1 0 1 1 1 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv4TC6 == 0) treasureChest5=[self updateSprite:treasureChest5 x:137 y:49 image:@"Treasure Chest.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 103: {
                gameData.area = @"lv4";
                gameData.gridlayout = @"1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 0 0 1 0 0 1 1 1 0 0 0 1 1 0 0 0 1 0 0 0 1 1 0 0 0 1 0 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 5;
                gameData.southcard = gameData.card + 5;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv4M2 == 0) treasureChest4=[self updateSprite:treasureChest4 x:137 y:137 image:@"Treasure Chest.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 104: {
                gameData.area = @"lv4";
                gameData.gridlayout = @"1 1 1 1 0 1 1 1 0 0 0 0 0 1 1 0 0 0 1 0 1 1 1 0 0 0 0 1 0 1 0 1 0 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 5;
                gameData.southcard = gameData.card + 5;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 110: {
                gameData.area = @"lv5";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 5 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 2;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = FALSE;
                break;
            }
            case 111: {
                gameData.area = @"lv5";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv5TC1 == 0) treasureChest5=[self updateSprite:treasureChest5 x:137 y:137 image:@"Treasure Chest.gif"];
                gameData.cardSpawnsNPCs = FALSE;
                break;
            }
            case 112: {
                gameData.area = @"lv5";
                gameData.gridlayout = @"1 1 0 1 3 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1";
                if (gameData.slidewallposition == 1) gameData.gridlayout = @"1 1 0 1 3 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 0 0 0 1 1 0 1 1 1 1 1 1 0 0 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1";
                gameData.northcard = gameData.card - 2;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                slideWall3=[self updateSprite:slideWall3 x:gameData.slidewallX y:gameData.slidewallY image:@"Slide Wall.gif"];
                gameData.cardSpawnsNPCs = FALSE;
                break;
            }
        }
    } else {
        switch (gameData.card) {
            case 113: {
                gameData.area = @"lv5";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 0 1 0 0 0 1 0 0 1 0 1 0 1 1 0 1 0 0 0 1 1 0 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv5E1 == 0) npcSprite12=[self updateSprite:npcSprite12 x:137 y:137 image:@"DuergarM2.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 114: {
                gameData.area = @"lv5";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 1 1 0 0 1 0 0 1 1 1 0 1 1 0 1 0 0 0 1 0 0 1 1 1 1 1 0 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv5TC2 == 0) treasureChest5=[self updateSprite:treasureChest5 x:225 y:49 image:@"Treasure Chest.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 115: {
                gameData.area = @"lv5";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 0 0 0 1 0 0 0 0 0 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv5TC3 == 0) treasureChest5=[self updateSprite:treasureChest5 x:49 y:93 image:@"Treasure Chest.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 116: {
                gameData.area = @"lv5";
                gameData.gridlayout = @"1 0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0 0 0 0 1 1 6 0 0 1 1 0 0 0 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 117: {
                gameData.area = @"lv5";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 1 1 1 1 1 1 6 0 0 1 1 1 1 1 1 1 0 0 0 0 0 0 0 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv5TC4 == 0) treasureChest5=[self updateSprite:treasureChest5 x:225 y:225 image:@"Treasure Chest.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 118: {
                gameData.area = @"lv5";
                gameData.gridlayout = @"1 1 1 1 0 1 1 0 0 1 0 0 0 1 1 0 1 1 0 1 1 0 0 1 0 0 0 1 1 0 1 1 0 1 1 0 0 1 0 0 0 1 1 1 1 1 0 1 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv5E2 == 0) npcSprite11=[self updateSprite:npcSprite11 x:181 y:93 image:@"DuergarM1.gif"];
                if (gameData.lv5E3 == 0) npcSprite12=[self updateSprite:npcSprite12 x:181 y:181 image:@"DuergarM2.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 119: {
                gameData.area = @"lv5";
                gameData.gridlayout = @"1 1 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 1 0 0 1 1 0 0 6 0 0 1 1 0 0 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                
                if (gameData.doppelgangerevent == 0) {
                    gameData.NPCalive = 1;
                    gameData.NPCspeed = 100;
                    gameData.NPCsprite = @"HumanF6.gif";
                    if (gameData.RECENTCARD != 6) {
                        gameData.NPCgridY = 2;
                        gameData.NPCgridX = 5;
                        gameData.NPCmoveY = gameData.NPCgridY;
                        gameData.NPCmoveX = gameData.NPCgridX;
                        gameData.NPCspriteY = gameData.NPCgridY * 44;
                        gameData.NPCspriteY = gameData.NPCspriteY - 39;
                        gameData.NPCspriteX = gameData.NPCgridX * 44;
                        gameData.NPCspriteX = gameData.NPCspriteX - 39;
                    }
                    npcSprite14 = [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                }
                
                gameData.cardSpawnsNPCs = FALSE;
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 120: {
                gameData.area = @"lv5";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 0 0 1 0 0 0 0 1 1 1 1 0 1 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 121: {
                gameData.area = @"lv5";
                gameData.gridlayout = @"1 1 1 1 0 1 1 1 0 0 1 0 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv5TC5 == 0) treasureChest5=[self updateSprite:treasureChest5 x:93 y:49 image:@"Treasure Chest.gif"];
                if (gameData.lv5M1 == 0) treasureChest4=[self updateSprite:treasureChest4 x:49 y:49 image:@"Treasure Chest.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 125: {
                gameData.area = @"lv6";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1";
                gameData.northcard = gameData.card - 2;
                gameData.southcard = gameData.card + 2;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                //if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                //if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv6TC1 == 0) treasureChest5=[self updateSprite:treasureChest5 x:93 y:93 image:@"Treasure Chest.gif"];
                if (gameData.lv6switch1 == 0) tileSprite3=[self updateSprite:tileSprite3 x:49 y:181 image:@"Blue Glow.gif"];
                gameData.cardSpawnsNPCs = FALSE;
                //[self startTimer:gameData.NPCspeed];
                break;
            }
            case 126: {
                gameData.area = @"lv6";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 1 0 0 1 1 1 0 1 0 0 0 1 1 0 1 1 1 0 1 1 0 0 0 0 0 1 1 0 1 1 1 1 1";
                gameData.northcard = gameData.card - 2;
                gameData.southcard = gameData.card + 2;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv6TC2 == 0) treasureChest5=[self updateSprite:treasureChest5 x:137 y:137 image:@"Treasure Chest.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 127: {
                gameData.area = @"lv6";
                gameData.gridlayout = @"1 1 0 1 1 1 1 1 0 0 1 0 0 1 1 0 0 0 0 0 1 1 0 0 0 1 0 1 1 0 1 0 0 0 1 1 0 0 0 0 0 1 1 1 1 1 0 1 1";
                gameData.northcard = gameData.card - 2;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 128: {
                gameData.area = @"lv6";
                gameData.gridlayout = @"1 0 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 0 0 0 0 0 0 1 1 0 0 0 0 1 1 1 0 1 1 1 1";
                gameData.northcard = gameData.card - 2;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 129: {
                gameData.area = @"lv6";
                gameData.gridlayout = @"1 1 1 1 1 1 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 130: {
                gameData.area = @"lv6";
                gameData.gridlayout = @"1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 0 1 0 0 0 1 0 0 1 1 1 1 0 0 0 1 0 1 1 1 1 1 1 0 1 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv6TC3 == 0) treasureChest5 = [self updateSprite:treasureChest5 x:181 y:225 image:@"Treasure Chest.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 131: {
                gameData.area = @"lv6";
                gameData.gridlayout = @"1 1 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 0 0 0 1 0 0 0 1 0 1 1 1 0 0 0 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv6E1 == 0) npcSprite12 = [self updateSprite:npcSprite12 x:93 y:49 image:@"DrowF3.gif"];
                if (gameData.lv6E2 == 0) npcSprite11 = [self updateSprite:npcSprite11 x:181 y:137 image:@"DrowF3.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 132: {
                gameData.area = @"lv6";
                gameData.gridlayout = @"1 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 0 0 0 1 0 0 0 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 133: {
                gameData.area = @"lv6";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 1 6 0 1 1 1 1 1 1 0 1 1 1 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = FALSE;
                //[self startTimer:gameData.NPCspeed];
                break;
            }
            case 134: {
                gameData.area = @"lv6";
                gameData.gridlayout = @"1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 6 1 1 1 1 1 1 0 1 1 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = FALSE;
                //[self startTimer:gameData.NPCspeed];
                break;
            }
            case 135: {
                gameData.area = @"lv6";
                gameData.gridlayout = @"1 1 1 1 0 0 1 1 0 0 0 0 0 1 1 1 0 0 1 0 1 0 0 1 0 0 0 1 1 0 0 0 1 0 1 1 0 0 1 0 0 1 1 1 0 1 0 1 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv6TC4 == 0) treasureChest5 = [self updateSprite:treasureChest5 x:137 y:49 image:@"Treasure Chest.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 136: {
                gameData.area = @"lv6";
                gameData.gridlayout = @"1 1 1 0 1 1 1 1 0 0 0 0 0 1 1 0 0 1 0 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 0 1 0 0 0 0 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv6E3 == 0) npcSprite12 = [self updateSprite:npcSprite12 x:181 y:93 image:@"DrowM2.gif"];
                if (gameData.lv6E4 == 0) npcSprite11 = [self updateSprite:npcSprite11 x:93 y:181 image:@"DrowM1.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 137: {
                gameData.area = @"lv6";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 0 6 0 0 0 1 1 0 0 0 0 1 1 1 1 7 0 0 0 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0 1 1 1 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv6TC5 == 0) treasureChest5 = [self updateSprite:treasureChest5 x:49 y:49 image:@"Treasure Chest.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                break;
            }
            case 138: {
                gameData.area = @"lv6";
                gameData.gridlayout = @"1 1 1 0 1 1 1 1 1 1 7 1 1 1 1 1 1 8 1 1 1 1 1 1 9 1 1 1 1 6 1 0 1 0 1 0 0 0 0 0 0 0 1 1 1 1 5 1 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 139: {
                gameData.area = @"lv6";
                gameData.gridlayout = @"1 1 0 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 1 0 1 1 0 0 0 0 0 1 1 1 1 0 0 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 4;
                gameData.southcard = gameData.card + 4;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 140: {
                gameData.area = @"lv6";
                gameData.gridlayout = @"1 1 0 1 1 1 1 1 0 0 0 0 1 1 1 0 1 1 0 1 1 1 0 1 0 0 0 1 1 0 0 0 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv6switch2 == 0) tileSprite3 = [self updateSprite:tileSprite3 x:137 y:137 image:@"Blue Glow.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 141: {
                gameData.area = @"lv6";
                gameData.gridlayout = @"1 1 1 1 3 1 1 1 1 1 0 0 0 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                if (gameData.lv6switch3 == 0) tileSprite3 = [self updateSprite:tileSprite3 x:93 y:225 image:@"Blue Glow.gif"];
                gameData.cardSpawnsNPCs = TRUE;
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 145: {
                gameData.area = @"lv7";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 6 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 2;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = FALSE;
                //[self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 146: {
                gameData.area = @"lv7";
                gameData.gridlayout = @"1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1 1 1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0 0 0 0 1 1 0 0 0 0 0 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 2;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = FALSE;
                //[self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 147: {
                gameData.area = @"lv7";
                gameData.gridlayout = @"1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 2;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.NPCalive > 0) npcSprite14=[self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                if (gameData.NPC2alive > 0) npcSprite13=[self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
                gameData.cardSpawnsNPCs = FALSE;
                //[self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 148: {
                gameData.area = @"lv7";
                gameData.gridlayout = @"0 0 0 0 0 1 1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 1 0 0 0 0 1 0 1 1 0 0 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 1";
                gameData.NPCgridlayout = @"1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 2;
                gameData.southcard = gameData.card + 1;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.lv7B1 == 0) {
                    gameData.NPCalive = 1;
                    gameData.NPCspeed = 100;
                    gameData.NPCsprite = @"Black Dragon.gif";
                    if (gameData.RECENTCARD != 6) {
                        gameData.NPCgridY = 4;
                        gameData.NPCgridX = 5;
                        gameData.NPCspriteY = gameData.NPCgridY * 44;
                        gameData.NPCspriteY = gameData.NPCspriteY - 39;
                        gameData.NPCspriteX = gameData.NPCgridX * 44;
                        gameData.NPCspriteX = gameData.NPCspriteX - 39;
                        gameData.NPCmoveY = gameData.NPCgridY;
                        gameData.NPCmoveX = gameData.NPCgridX;
                    }
                    npcSprite14 = [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                }
                
                gameData.cardSpawnsNPCs = FALSE;
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 149: {
                gameData.area = @"lv7";
                gameData.gridlayout = @"1 1 1 1 0 0 1 1 1 0 0 0 0 1 1 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 0 0 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 1;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerX];
                
                if (gameData.artifact == 0) tileSprite1=[self updateSprite:tileSprite1 x:137 y:137 image:@"Artifact.gif"];
                if (gameData.lv7TC2 == 0) tileSprite2=[self updateSprite:tileSprite2 x:93 y:49 image:@"Treasure Chest.gif"];
                if (gameData.lv7TC3 == 0) tileSprite3=[self updateSprite:tileSprite3 x:49 y:93 image:@"Treasure Chest.gif"];
                if (gameData.lv7TC4 == 0) tileSprite4=[self updateSprite:tileSprite4 x:93 y:181 image:@"Treasure Chest.gif"];
                if (gameData.lv7TC5 == 0) tileSprite5=[self updateSprite:tileSprite5 x:225 y:181 image:@"Treasure Chest.gif"];
                if (gameData.lv7TC6 == 0) treasureChest6=[self updateSprite:treasureChest6 x:137 y:225 image:@"Treasure Chest.gif"];
                
                gameData.cardSpawnsNPCs = FALSE;
                //[self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 150: {
                gameData.area = @"lv7";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 6 0 0 0 1 1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1";
                gameData.northcard = gameData.card - 3;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 50;
                
                gameData.NPCalive = 0;
                gameData.NPCspeed = 200;
                gameData.NPCsprite = @"SvirfneblinM1.gif";
                if (gameData.RECENTCARD == 133) {
                    gameData.NPCgridY = 4;
                    gameData.NPCgridX = 5;
                    gameData.NPCspriteY = gameData.NPCgridY * 44;
                    gameData.NPCspriteY = gameData.NPCspriteY - 39;
                    gameData.NPCspriteX = gameData.NPCgridX * 44;
                    gameData.NPCspriteX = gameData.NPCspriteX - 39;
                    gameData.NPCmoveY = gameData.NPCgridY;
                    gameData.NPCmoveX = gameData.NPCgridX;
                }
                
                npcSprite14 = [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                
                
                if (gameData.RECENTCARD == 133) [self print:@"Svirfneblin Enchanter" message:@"In exchange for keeping my hideout secret from the Drow, I'll forge you special equipment."];
                if (gameData.RECENTCARD == 47) [self print:@"Svirfneblin Enchanter" message:@"My prices are high, but my wares are the best of their craft."];
                
                if (gameData.lv7TC1 == 0) treasureChest5 = [self updateSprite:treasureChest5 x:93 y:49 image:@"Treasure Chest.gif"];
                
                
                gameData.cardSpawnsNPCs = FALSE;
                [self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 155: {
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1";
                
                if (gameData.theAudio) {
                    [gameData.theAudio stop];
                }
                gameData.event = 0;                
                
                playerImage.alpha = 0;
                
                [self performSelector:@selector(special) withObject:nil afterDelay:2.0];
                
                break;
            }
            case 204: {
                gameData.area = @"Castle Star Reach";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 1 1 1 1 0 0 0 0 0 1 1 1 0 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1";
                
                gameData.northcard = 205;
                gameData.southcard = gameData.card + 3;
                gameData.eastcard = gameData.card + 1;
                gameData.westcard = gameData.card - 1;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 100;
                
                gameData.cardSpawnsNPCs = FALSE;
                //[self startTimer:gameData.NPCspeed];
                
                break;
            }
            case 205: {
                gameData.area = @"Castle Star Reach";
                gameData.gridlayout = @"1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 0 0 1 0 0 1 1 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1 0 0 0 1 1 1 1 1 5 1 1 1";
                
                gameData.northcard = gameData.card + 1;
                gameData.southcard = gameData.card - 1;
                gameData.eastcard = gameData.card;
                gameData.westcard = gameData.card;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                gameData.NPCspeed = 200;
                
                gameData.NPCalive = 0;
                gameData.NPCspeed = 200;
                gameData.NPCsprite = @"Mimic.gif";
                if (gameData.RECENTCARD != 6) {
                    gameData.NPCgridY = 4;
                    gameData.NPCgridX = 5;
                    gameData.NPCspriteY = gameData.NPCgridY * 44;
                    gameData.NPCspriteY = gameData.NPCspriteY - 39;
                    gameData.NPCspriteX = gameData.NPCgridX * 44;
                    gameData.NPCspriteX = gameData.NPCspriteX - 39;
                    gameData.NPCmoveY = gameData.NPCgridY;
                    gameData.NPCmoveX = gameData.NPCgridX;
                }
                
                npcSprite14 = [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
                
                
                gameData.cardSpawnsNPCs = FALSE;
                [self startTimer:gameData.NPCspeed];
                
                break;
            }

            case 206: {
                gameData.area = @"Castle Star Reach";
                gameData.gridlayout = @"1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 0 1 0 0 1 1 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1";
                
                gameData.northcard = gameData.card - 0;
                gameData.southcard = gameData.card - 1;
                gameData.eastcard = gameData.card;
                gameData.westcard = gameData.card;
                gameData.playerY = gameData.gridY * 44;
                gameData.playerY = gameData.playerY - 39;
                gameData.playerX = gameData.gridX * 44;
                gameData.playerX = gameData.playerX - 39;
                gameData.moveY = gameData.gridY;
                gameData.moveX = gameData.gridX;
                
                gameData.cardSpawnsNPCs = FALSE;
                
                [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(special) userInfo:nil repeats:NO];
                break;
            }
}
    }
    
}
- (void)keydown:(int)keydown {
    int UPARROW = 1, DOWNARROW = 2, LEFTARROW = 3, RIGHTARROW = 4;
    int empty=0,wall=1,portal1=2, portal2=3,portal3=4,portal4=5,portal5=6,dwarf1 = 5,magicBridge=6,destroyedHouse = 7,secret1 = 6, secret2 = 7, exitblock3 = 7, exitblock2 = 8, exitblock1 = 9;
    int newtile = empty;
    int prevCard = gameData.card;
    if (keydown == UPARROW) gameData.moveY = gameData.gridY - 1;
    if (keydown == DOWNARROW) gameData.moveY = gameData.gridY + 1;
    if (keydown == LEFTARROW) gameData.moveX = gameData.gridX - 1;
    if (keydown == RIGHTARROW) gameData.moveX = gameData.gridX + 1;
    if ([gameData.gridlayout length] == 0) { //Old Nav
        switch (gameData.card) {
            case 20: {
                //----GRID CODE----------------------------------------------------------------------------------- 
                if (gameData.moveY == 1) newtile = wall;
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 4: { newtile = portal1; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = portal2; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 5: { newtile = portal3; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) newtile = wall;
                //---/GRID CODE----------------------------------------------------------------------------------- 
                if (newtile == portal1) {
                    if (gameData.moveY < gameData.gridY) {
                        gameData.playerY = 225;
                        gameData.playerX = 137;
                        gameData.gridY = 6;
                        gameData.gridX = 4;                    
                        [self goToCard:39];
                    } else {
                        newtile = wall;
                    }
                }
                if (newtile == portal2) {
                    if (gameData.moveY < gameData.gridY) {
                        gameData.playerY = 225;
                        gameData.playerX = 181;
                        gameData.gridY = 6;
                        gameData.gridX = 5;                    
                        [self goToCard:40];
                    } else {
                        newtile = wall;
                    }
                }
                if (newtile == portal3) {
                    if (gameData.moveY < gameData.gridY) {
                        gameData.playerY = 225;
                        gameData.playerX = 93;
                        gameData.gridY = 6;
                        gameData.gridX = 3;                    
                        [self goToCard:41];
                    } else {
                        newtile = wall;
                    }
                }
                break;
            }
            case 21: {
                if (gameData.moveY == 1) newtile = wall;
                
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 4: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                
                if (gameData.moveY == 7) newtile = wall;
                break;
            }
            case 22: {
                if (gameData.moveY == 1) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                
                if (gameData.moveY == 7) newtile = wall;
                break;
            }
            case 23: {
                if (gameData.moveY == 1) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                break;
            }
            case 24: {
                if (gameData.moveY == 1) newtile = wall;
                
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 6: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                
                if (gameData.moveY == 7) newtile = wall;
                break;
            }
            case 25: {
                if (gameData.moveY == 1) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                
                
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 4: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 4: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 2: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                
                if (gameData.moveY == 7) newtile = wall;
                break;
            }
            case 26: {
                if (gameData.moveY == 1) newtile = wall;
                
                
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                break;
            }
            case 27: {
                if (gameData.moveY == 1) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = portal1; break; }
                        case 4: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = portal2; break; }
                        case 4: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) newtile = wall;
                if (newtile == portal1) {
                    gameData.playerY = 49;
                    gameData.playerX = 137;
                    gameData.gridY = 2;
                    gameData.gridX = 4;
                    [gameData.theAudio stop];
                    [self goToCard:29];
                }
                if (newtile == portal2) {
                    gameData.playerY = 225;
                    gameData.playerX = 137;
                    gameData.gridY = 6;
                    gameData.gridX = 4;
                    [gameData.theAudio stop];
                    [self goToCard:29];
                }
                break;
            }
            case 28: {
                if (gameData.moveY == 1) newtile = wall;
                if (gameData.moveY == 2) newtile = wall;
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = portal1; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (newtile == portal1) {
                    gameData.playerY = 225;
                    gameData.playerX = 137;
                    gameData.gridY = 6;
                    gameData.gridX = 4;
                    [gameData.theAudio stop];
                    [self goToCard:30];
                }
                break;
            }
            case 29: {
                if (gameData.moveY == 1) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = portal1; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = dwarf1; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = portal2; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (newtile == portal1) {
                    gameData.playerY = 93;
                    gameData.playerX = 93;
                    gameData.gridY = 3;
                    gameData.gridX = 3;
                    [gameData playAudio:@"Surface Music"];
                    [self goToCard:27];
                }
                if (newtile == portal2) {
                    gameData.playerY = 225;
                    gameData.playerX = 93;
                    gameData.gridY = 6;
                    gameData.gridX = 3;
                    [gameData playAudio:@"Surface Music"];
                    [self goToCard:27];
                }
                if (newtile == dwarf1) {
                    if ([gameData.playerrace isEqualToString: @"Dwarf"]) {
                        newtile = empty;
                    } else {
                        [self print:@"Dwarf Sentry" message:[NSString stringWithFormat:@"Woh there %@, only Dwarves are granted passage to the great city of Stone Basin. If you're looking for traders try Lanburgh to the south.",gameData.playerrace]];
                        newtile = wall;
                    }
                }
                break;
            }
            case 30: {
                if (gameData.moveY == 1) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 4: { newtile = portal1; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 4: { newtile = portal1; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = portal1; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (newtile == portal1) {
                    gameData.playerY = 137;
                    gameData.playerX = 137;
                    gameData.gridY = 4;
                    gameData.gridX = 4;
                    [gameData playAudio:@"Surface Music"];
                    [self goToCard:28];
                }
                break;
            }
            case 31: {
                if (gameData.moveY == 1) {newtile = wall;}
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) {newtile = wall;}
                break;
            }
            case 32: {
                if (gameData.moveY == 1) {newtile = wall;}
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = dwarf1; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (newtile == dwarf1) {
                    [self print:@"Dwarf Sentry" message:@"The deep mines are off limits until this Underdark business is put to rest. We can't risk letting a spy into our great city, and our foes have very powerful deceptive magic."];
                    newtile = wall;
                }
                break;
            }
            case 33: {
                if (gameData.moveY == 1) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.gridX == 4 && gameData.gridY == 4) {
                    if (keydown == UPARROW) gameData.secretCastle += 1;
                    if (gameData.secretCastle >= 3) {
                        gameData.secretCastle = 0;
                        
                        if ([gameData theAudio]) [gameData.theAudio stop];
                        gameData.teleporter = -1;
                        [self teleport];
                    }
                } else {
                    gameData.secretCastle = 0;
                }
                break;
            }
            case 34: {
                if (gameData.moveY == 1) {newtile = wall;}
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 3: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 4: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 2: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                break;
            }
            case 35: {
                if (gameData.moveY == 1) {newtile = wall;}
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 6: { newtile = magicBridge; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) {newtile = wall;}
                if (newtile == magicBridge) {
                    if ([gameData.playerrace isEqualToString:@"Elf"]) {
                        newtile = empty;
                    } else {
                        [self print:@"A magical barrier prevents you from crossing the bridge." message:nil];
                        newtile = wall;
                    }
                }
                break;
            }
            case 36: {
                if (gameData.moveY == 1) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 3: { newtile = destroyedHouse; break; }
                        case 5: { newtile = destroyedHouse; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 4: { newtile = destroyedHouse; break; }
                        case 5: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) {newtile = wall;}
                if (newtile == destroyedHouse) {
                    [self print:@"This house is utterly destroyed. Now it's no more than proof of the Underdark's evil intentions." message:nil];
                    newtile = wall;
                }
                break;
            }
            case 37: {
                if (gameData.moveY == 1) {newtile = wall;}
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = destroyedHouse; break; }
                        case 5: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = destroyedHouse; break; }
                        case 5: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) {newtile = wall;}
                if (newtile == destroyedHouse) {
                    [self print:@"This house is utterly destroyed. Now it's no more than proof of the Underdark's evil intentions." message:nil];
                    newtile = wall;
                }
                break;
            }
            case 38: {
                if (gameData.moveY == 1) {newtile = wall;}
                if (gameData.moveY == 2) {newtile = wall;}
                
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                break;
            }
            case 39: {
                if (gameData.moveY == 1) {newtile = wall;}
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = portal1; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (newtile == portal1) {
                    gameData.playerY = 137;
                    gameData.playerX = 137;
                    gameData.gridY = 4;
                    gameData.gridX = 4;
                    [gameData playAudio:@"Surface Music"];
                    [self goToCard:20];
                }
                break;
            }
            case 40: {
                if (gameData.moveY == 1) {newtile = wall;}
                if (gameData.moveY == 2) {newtile = wall;}
                
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 4: { newtile = wall; break; }
                        case 5: { newtile = portal1; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (newtile == portal1) {
                    gameData.playerY = 181;
                    gameData.playerX = 49;
                    gameData.gridY = 5;
                    gameData.gridX = 2;
                    [gameData playAudio:@"Surface Music"];
                    [self goToCard:20];
                }
                break;
            } 
            case 41: {
                if (gameData.moveY == 1) {newtile = wall;}
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = portal1; break; }
                        case 4: { newtile = wall; break; }
                        case 5: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (newtile == portal1) {
                    gameData.playerY = 225;
                    gameData.playerX = 181;
                    gameData.gridY = 6;
                    gameData.gridX = 5;
                    [gameData playAudio:@"Surface Music"];
                    [self goToCard:20];
                }
                break;
            } 
            case 42: {
                if (gameData.moveY == 1) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 3: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 2) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                
                if (gameData.moveY == 3) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 4) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 2: { newtile = portal1; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 5) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 6) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (gameData.moveY == 7) {
                    switch (gameData.moveX) {
                        case 1: { newtile = wall; break; }
                        case 6: { newtile = wall; break; }
                        case 7: { newtile = wall; break; }
                    }
                }
                if (newtile == portal1) {
                    gameData.gridY = 4;
                    gameData.gridX = 2;
                    gameData.spriteY = 137;
                    gameData.spriteX = 49;
                    gameData.moveY = gameData.gridY;
                    gameData.moveX = gameData.gridX;
                    [gameData playAudio:@"Cave Music"];
                    [self goToCard:54];
                }
                if (gameData.moveY < 1 || gameData.moveX < 1 || gameData.moveY > 7 || gameData.moveX > 7) [gameData playAudio:@"Surface Music"];
                break;
            }
            case 72: {newtile = wall;break;}
            case 49: {newtile = wall;break;}
        }
        if (newtile == empty) {
            if (keydown == UPARROW) gameData.playerY = gameData.playerY - 44;
            if (keydown == DOWNARROW) gameData.playerY = gameData.playerY + 44;
            if (keydown == LEFTARROW) gameData.playerX = gameData.playerX - 44;
            if (keydown == RIGHTARROW) gameData.playerX = gameData.playerX + 44;
            gameData.gridY = gameData.moveY;
            gameData.gridX = gameData.moveX;
        }
        if (newtile == wall) {
            gameData.moveY = gameData.gridY;
            gameData.moveX = gameData.gridX;
        }
        if (gameData.gridY < 1) {
            gameData.playerY = 269;
            gameData.gridY = 7;
            [self goToCard:gameData.northcard];
        }
        if (gameData.gridY > 7) {
            gameData.playerY = 5;
            gameData.gridY = 1;
            [self goToCard:gameData.southcard];
        }
        if (gameData.gridX > 7) {
            gameData.playerX = 5;
            gameData.gridX = 1;
            [self goToCard:gameData.eastcard];
        }
        if (gameData.gridX < 1) {
            gameData.playerX = 269;
            gameData.gridX = 7;
            [self goToCard:gameData.westcard];
        }
        
        if (gameData.walk > 59) {
            gameData.walk = (rand()%9)+1;
            gameData.walkHPup = (rand()%3)+1;
            gameData.walkMPup = (rand()%2)+1;
            gameData.playerHP = gameData.playerHP + gameData.walkHPup;
            if (gameData.playerHP > gameData.maxHP) gameData.playerHP = gameData.maxHP;
            gameData.playerMP = gameData.playerMP + gameData.walkMPup;
            if (gameData.playerMP > gameData.maxMP) gameData.playerMP = gameData.maxMP;
        }
    } else { //New Nav
        int moveXY = 0;
        moveXY = 7 * gameData.moveY;
        moveXY = moveXY - 7;
        moveXY = moveXY + gameData.moveX;
        NSArray* grid = [gameData.gridlayout componentsSeparatedByString: @" "];
        if (moveXY-1 < 0 || moveXY-1 > [grid count]-1) {
            newtile = wall;
        } else {
            newtile = [[grid objectAtIndex:moveXY-1] intValue];
        }
        //For easier finding.
        if (gameData.card < 113) {
            switch (gameData.card) {
                case 50: {
                    if (newtile == portal1) {
                        gameData.gridY = 5;
                        gameData.gridX = 4;
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        [self goToCard: 68];
                    }
                    if (newtile == portal2) {
                        gameData.gridY = 2;
                        gameData.gridX = 4;
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        [self goToCard: gameData.southcard];
                    }
                    break;
                }
                case 52: {
                    if (gameData.lv1E1 == 0) {
                        if (gameData.moveY == 2) {
                            if (gameData.moveX == 4) {
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"GoblinM1.gif";
                                gameData.enemyID = @"lv1E1";
                                [self initiateBattle];
                            }
                        }
                    }
                    if (newtile == portal1) {
                        if (gameData.KEYrusty == 1) {
                            gameData.gridY = 6;
                            gameData.gridX = 4;
                            gameData.NPCalive = 0;
                            gameData.NPC2alive = 0;
                            [self goToCard: gameData.northcard];
                        } else {
                            newtile = wall;
                            [self print:@"The door is locked. A rusty keyhole." message:nil];
                        }
                    }
                    break;
                }
                case 54: {
                    if (newtile == portal1) {
                        gameData.gridY = 4;
                        gameData.gridX = 2;
                        gameData.moveY = gameData.gridY;
                        gameData.moveX = gameData.gridX;
                        gameData.playerY = 137;
                        gameData.playerX = 49;
                        gameData.rareitembuyertime = gameData.rareitembuyertime + 1;
                        if (gameData.rareitembuyertime > 70) gameData.rareitembuyertime = 70;
                        [gameData playAudio:@"Surface Music"];
                        [self goToCard:42];
                    }
                    break;
                }
                case 61: {
                    if (newtile == portal4) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 2;
                        gameData.gridX = gameData.moveX;
                        [self goToCard:gameData.southcard];
                    }
                    break;
                }
                case 62: {
                    if (newtile == portal5) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 2;
                        gameData.gridX = 5;
                        [self goToCard:84];
                    }
                    if (gameData.lv2B1 == 0) {
                        if (gameData.moveY == 4) {
                            if (gameData.moveX == 3) {
                                gameData.battlereturn = gameData.card;
                                gameData.bossbattle = 1;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"Bugbear.gif";
                                gameData.enemyID = @"lv2B1";
                                [self initiateBattle];
                            }
                        }
                    }
                    break;
                }
                case 64: {
                    if (newtile == portal2) {
                        if (gameData.KEYiron == 1) {
                            gameData.NPCalive = 0;
                            gameData.NPC2alive = 0;
                            gameData.gridY = 6;
                            gameData.gridX = gameData.moveX;
                            [self goToCard:gameData.northcard];
                        } else {
                            newtile = wall;
                            [self print:@"The door is locked. An iron keyhole." message:nil];
                        }
                    }
                    break;
                }
                case 65: {
                    if (gameData.lv2E1 == 0) {
                        if (gameData.moveY == 3) {
                            if (gameData.moveX == 3) {
                                gameData.battlereturn = gameData.card;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"GoblinM3.gif";
                                gameData.enemyID = @"lv2E1";
                                [self initiateBattle];
                            }
                        }
                    }
                    break;
                }
                case 68: {
                    if (newtile == portal5) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 3;
                        gameData.gridX = 4;
                        [self goToCard:50];
                    }
                    break;
                }
                case 70: {
                    if (gameData.lv2E2 == 0) {
                        if (gameData.moveY == 6) {
                            if (gameData.moveX == 3) {
                                gameData.battlereturn = gameData.card;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"GoblinM4.gif";
                                gameData.enemyID = @"lv2E2";
                                [self initiateBattle];
                            }
                        }
                    }
                    break;
                }
                case 71: {
                    if (gameData.NPCalive > 0) {
                        gameData.NPCnumber = 1;
                        if ([self intersection:npcSprite14 with:playerImage]) {
                            if (gameData.TCpuzzlecomplete == 0) gameData.TCpuzzlecomplete = 1;
                        }
                    }
                    break;
                }
                case 75: {
                    if (newtile == portal5) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 5;
                        gameData.gridX = 3;
                        [self goToCard: 95];
                    }
                    break;
                }
                case 76: {
                    if (gameData.lv3E1 == 0) {
                        if (gameData.moveY == 4) {
                            if (gameData.moveX == 3) {
                                gameData.battlereturn = gameData.card;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"OrcM3.gif";
                                gameData.enemyID = @"lv3E1";
                                [self initiateBattle];
                            }
                        }
                    }
                    break;
                }
                case 77: {
                    if (newtile == portal4) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 2;
                        gameData.gridX = gameData.moveX;
                        [self goToCard:gameData.southcard];
                    }
                    
                    break;
                }
                case 79: {
                    if (newtile == portal1) {
                        if (gameData.tilepuzzlecomplete == 0) {
                            newtile = wall;
                            [self print:@"It's locked. There doesn't appear to be a keyhole." message:nil];
                        } else {
                            gameData.gridY = 6;
                            gameData.gridX = 4;
                            gameData.NPCalive = 0;
                            gameData.NPC2alive = 0;
                            [gameData playAudio:@"Cave Music"];
                            [self goToCard:77];
                        }
                    }
                    break;
                }
                case 81: {
                    if (gameData.lv3E2 == 0) {
                        if (gameData.moveY == 4) {
                            if (gameData.moveX == 3) {
                                gameData.battlereturn = gameData.card;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"OrcM2.gif";
                                gameData.enemyID = @"lv3E2";
                                [self initiateBattle];
                            }
                        }
                    }
                    break;
                }
                case 82: {
                    if (gameData.lv3E3 == 0) {
                        if (gameData.moveY == 6) {
                            if (gameData.moveX == 5) {
                                gameData.battlereturn = gameData.card;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"OrcM1.gif";
                                gameData.enemyID = @"lv3E3";
                                [self initiateBattle];
                            }
                        }
                    }
                    break;
                }
                case 84: {
                    if (newtile == portal5) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 4;
                        gameData.gridX = 6;
                        [self goToCard:62];
                    }
                    break;
                }
                case 92: {
                    if (gameData.lv4B1 == 0) {
                        if (gameData.moveY == 4) {
                            if (gameData.moveX == 4) {
                                gameData.battlereturn = gameData.card;
                                gameData.bossbattle = 1;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"Beholder.gif";
                                gameData.enemyID = @"lv4B1";
                                [self initiateBattle];
                            }
                        }
                    }
                    if (newtile == portal4) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 2;
                        gameData.gridX = gameData.moveX;
                        [self goToCard:gameData.southcard];
                    }
                    if (newtile == portal5) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 4;
                        gameData.gridX = 3;
                        [self goToCard:116];
                    }
                    break;
                }
                case 93: {
                    if (gameData.lv4E1 == 0) {
                        if (gameData.moveY == 5) {
                            if (gameData.moveX == 5) {
                                gameData.battlereturn = gameData.card;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"ImpM2.gif";
                                gameData.enemyID = @"lv4E1";
                                [self initiateBattle];
                            }
                        }
                    }
                    if (newtile == portal2) {
                        if (gameData.KEYbronze == 1) {
                            gameData.NPCalive = 0;
                            gameData.NPC2alive = 0;
                            gameData.gridY = 6;
                            gameData.gridX = gameData.moveX;
                            [self goToCard:gameData.northcard];
                        } else {
                            newtile = wall;
                            [self print:@"The door is locked. A bronze keyhole." message:nil];
                        }
                    }
                    break;
                }
                case 95: {
                    if (newtile == portal5) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 4;
                        gameData.gridX = 3;
                        [self goToCard:75];
                    }
                    break;
                }
                case 96: {
                    if (gameData.lv4E2 == 0) {
                        if (gameData.moveY == 5) {
                            if (gameData.moveX == 6) {
                                gameData.battlereturn = gameData.card;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"ImpM3.gif";
                                gameData.enemyID = @"lv4E2";
                                [self initiateBattle];
                            }
                        }
                    }
                    break;
                }
                case 101: {
                    if (gameData.lv4E3 == 0) {
                        if (gameData.moveY == 3) {
                            if (gameData.moveX == 4) {
                                gameData.battlereturn = gameData.card;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"ImpM3.gif";
                                gameData.enemyID = @"lv4E3";
                                [self initiateBattle];
                            }
                        }
                    }
                    break;
                }
                case 110: {
                    if (newtile == portal4) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 2;
                        gameData.gridX = gameData.moveX;
                        [self goToCard:gameData.southcard];
                    }
                    break;
                }
                case 112: {
                    if (newtile == portal2) {
                        if (gameData.KEYsilver == 1) {
                            gameData.gridY = 6;
                            gameData.gridX = gameData.gridX;
                            gameData.NPCalive = 0;
                            gameData.NPC2alive = 0;
                            [self goToCard:gameData.northcard];
                        } else {
                            newtile = wall;
                            [self print:@"The door is locked. A silver keyhole." message:nil];
                        }
                    }
                    break;
                }
            }
        } else {
            switch (gameData.card) {
                case 113: {
                    if (gameData.lv5E1 == 0) {
                        if (gameData.moveY == 4) {
                            if (gameData.moveX == 4) {
                                gameData.battlereturn = gameData.card;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"DuergarM2.gif";
                                gameData.enemyID = @"lv5E1";
                                [self initiateBattle];
                            }
                        }
                    }
                    break;
                }
                case 116: {
                    if (newtile == portal5) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 3;
                        gameData.gridX = 4;
                        [self goToCard:92];
                    }
                    break;
                }
                case 117: {
                    if (newtile == portal5) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 5;
                        gameData.gridX = 2;
                        [self goToCard:138];
                    }
                    break;
                }
                case 118: {
                    if (gameData.lv5E2 == 0) {
                        if (gameData.moveY == 3) {
                            if (gameData.moveX == 5) {
                                gameData.battlereturn = gameData.card;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"DuergarM1.gif";
                                gameData.enemyID = @"lv5E2";
                                [self initiateBattle];
                            }
                        }
                    }
                    if (gameData.lv5E3 == 0) {
                        if (gameData.moveY == 5) {
                            if (gameData.moveX == 5) {
                                gameData.battlereturn = gameData.card;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"DuergarM2.gif";
                                gameData.enemyID = @"lv5E3";
                                [self initiateBattle];
                            }
                        }
                    }
                    break;
                }
                case 119: {
                    if (newtile == portal5) {
                        if (gameData.KEYgold == 0) {
                            newtile = wall;
                            [self print:@"The door is locked. A gold keyhole." message:nil];
                        } else {
                            newtile = empty;
                            if (keydown == RIGHTARROW) {
                                gameData.playerX = gameData.playerX + 44;
                                gameData.moveX = gameData.moveX + 1;
                            }
                            if (keydown == LEFTARROW) {
                                gameData.playerX = gameData.playerX - 44;
                                gameData.moveX = gameData.moveX - 1;
                            }
                        }
                    }
                    if (gameData.NPCalive > 0) {
                        gameData.NPCnumber = 1;
                        //[self intersection:playerImage with:npcSprite14]
                        if (gameData.moveX == gameData.NPCmoveX && gameData.moveY == gameData.NPCmoveY) {
                            gameData.blockrun = 1;
                            gameData.doppelgangerevent = 1;
                            [self initiateBattle];
                        }
                    }
                    break;
                }
                case 125: {
                    if (gameData.lv6switch1 == 0) {
                        //switchcollide = SPRITECOLLIDE 15 3
                        //[self intersection:playerImage with:tileSprite3]
                        if (gameData.moveX == 2 && gameData.moveY == 5) {
                            gameData.lv6switch1 = 1;
                            gameData.lv6exitsecret = gameData.lv6exitsecret + 1;
                            [tileSprite3 removeFromSuperview];
                            [tileSprite3 release];
                            tileSprite3 = nil;
                            [self print:@"Something happened..." message:nil];
                        }
                    }
                    break;
                }
                case 131: {
                    if (gameData.lv6E1 == 0) {
                        if (gameData.moveY == 2) {
                            if (gameData.moveX == 3) {
                                gameData.battlereturn = gameData.card;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"DrowF3.gif";
                                gameData.enemyID = @"lv6E1";
                                [self initiateBattle];
                            }
                        }
                    }
                    if (gameData.lv6E2 == 0) {
                        if (gameData.moveY == 4) {
                            if (gameData.moveX == 5) {
                                gameData.battlereturn = gameData.card;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"DrowF3.gif";
                                gameData.enemyID = @"lv6E2";
                                [self initiateBattle];
                            }
                        }
                    }
                    break;
                }
                case 133: {
                    if (newtile == portal5) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 3;
                        gameData.gridX = 3;
                        [self goToCard:150];
                    }
                    break;
                }
                case 134: {
                    if (newtile == portal5) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 3;
                        gameData.gridX = 3;
                        [self goToCard:145];
                    }
                    break;
                }
                case 136: {
                    if (gameData.lv6E3 == 0) {
                        if (gameData.moveY == 3) {
                            if (gameData.moveX == 5) {
                                gameData.battlereturn = gameData.card;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"DrowM2.gif";
                                gameData.enemyID = @"lv6E3";
                                [self initiateBattle];
                            }
                        }
                    }
                    if (gameData.lv6E4 == 0) {
                        if (gameData.moveY == 5) {
                            if (gameData.moveX == 3) {
                                gameData.battlereturn = gameData.card;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"DrowM1.gif";
                                gameData.enemyID = @"lv6E4";
                                [self initiateBattle];
                            }
                        }
                    }
                    break;
                }
                case 137: {
                    if (newtile == secret1) {
                        newtile = wall;
                        NSString* secrettext1 = @"G     o t   t     n   t e   e re";
                        [self print:@"A message is etched into the wall here:" message:secrettext1];
                    }
                    if (newtile == secret2) {
                        newtile = wall;
                        NSString* secrettext2 = @"  o  s u h   o fi d   h   s c  t.";
                        [self print:@"A message is etched into the wall here:" message:secrettext2];
                    }
                    break;
                }
                case 138: {
                    if (newtile == portal4) {
                        if (gameData.KEYplatinum == 1) {
                            gameData.gridY = 2;
                            gameData.gridX = gameData.gridX;
                            gameData.NPCalive = 0;
                            gameData.NPC2alive = 0;
                            [self goToCard:gameData.southcard];
                        }else{
                            newtile = wall;
                            [self print:@"The door is locked. A platinum keyhole." message:nil];
                        }
                    }
                    if (newtile == portal5) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 4;
                        gameData.gridX = 5;
                        [self goToCard:117];
                    }
                    if (newtile == exitblock1) {
                        newtile = wall;
                        if (gameData.lv6exitsecret > 0) newtile = empty;
                    }
                    if (newtile == exitblock2) {
                        newtile = wall;
                        if (gameData.lv6exitsecret > 1) newtile = empty;
                    }
                    if (newtile == exitblock3) {
                        newtile = wall;
                        if (gameData.lv6exitsecret > 2) newtile = empty;
                    }
                    break;
                }
                case 140: {
                    if (gameData.lv6switch2 == 0) {
                        //[self intersection:playerImage with:tileSprite3]
                        if (gameData.moveX == 4 && gameData.moveY == 4) {
                            gameData.lv6switch2 = 1;
                            gameData.lv6exitsecret += 1;
                            [tileSprite3 removeFromSuperview];
                            [tileSprite3 release];
                            tileSprite3 = nil;
                            [self print:@"Something happened..." message:nil];
                        }
                    }
                    break;
                }
                case 141: {
                    if (newtile == portal2) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 6;
                        gameData.gridX = gameData.moveX;
                        [self goToCard: gameData.northcard];
                    }
                    if (gameData.lv6switch3 == 0) {
                        //[self intersection:playerImage with:tileSprite3]
                        if (gameData.moveX == 3 && gameData.moveY == 6) {
                            gameData.lv6switch3 = 1;
                            gameData.lv6exitsecret += 1;
                            [tileSprite3 removeFromSuperview];
                            [tileSprite3 release];
                            tileSprite3 = nil;
                            [self print:@"Something happened..." message:nil];
                        }
                    }
                    break;
                }
                case 145: {
                    if (newtile == portal5) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 6;
                        gameData.gridX = 4;
                        [self goToCard:134];
                    }
                    break;
                }
                case 148: {
                    if (gameData.lv7B1 == 0) {
                        if (gameData.moveY >= gameData.NPCgridY) {
                            if (gameData.moveX >= gameData.NPCgridX) {
                                gameData.battlereturn = gameData.card;
                                gameData.bossbattle = 1;
                                gameData.NPCalive = 0;
                                gameData.NPC2alive = 0;
                                gameData.NPCnumber = 1;
                                gameData.NPCsprite = @"Black Dragon.gif";
                                gameData.enemyID = @"lv7B1";
                                [self initiateBattle];
                            }
                        }
                    }
                    break;
                }
                case 150: {
                    if (newtile == portal5) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 2;
                        gameData.gridX = 3;
                        [self goToCard:133];
                    }
                    break;
                }
                case 155: {newtile = wall;break;}
                case 204: {
                    if (newtile == portal2) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 6;
                        gameData.gridX = gameData.moveX;
                        [self goToCard:gameData.northcard];
                    }
                    break;
                }
                case 205: {
                    if (newtile == portal1) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = gameData.moveY;
                        gameData.gridX = 6;
                        [self goToCard:gameData.westcard];
                    }
                    if (newtile == portal2) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 6;
                        gameData.gridX = gameData.moveX;
                        [self goToCard:gameData.northcard];
                    }
                    if (newtile == portal3) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = gameData.moveY;
                        gameData.gridX = 2;
                        [self goToCard:gameData.eastcard];
                    }
                    if (newtile == portal4) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 4;
                        gameData.gridX = gameData.moveX;
                        [self goToCard:gameData.southcard];
                    }
                    break;
                }
                case 206: {
                    if (newtile == portal1) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = gameData.moveY;
                        gameData.gridX = 6;
                        [self goToCard:gameData.westcard];
                    }
                    if (newtile == portal2) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = 6;
                        gameData.gridX = gameData.moveX;
                        [self goToCard:gameData.northcard];
                    }
                    if (newtile == portal3) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = gameData.moveY;
                        gameData.gridX = 2;
                        [self goToCard:gameData.eastcard];
                    }
                    if (newtile == portal4) {
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        gameData.gridY = gameData.moveY;
                        gameData.gridX = gameData.moveX;
                        [self goToCard:gameData.southcard];
                    }
                    break;
                }
            }
        }
        
        if (gameData.NPCalive > 0 && !enteringBattle) {
            gameData.NPCnumber = 1;
            if ([self intersection:npcSprite14 with:playerImage]) {
                gameData.enemyID = @"";
                [self initiateBattle];
            }
        }
        if (gameData.NPC2alive > 0 && !enteringBattle) {
            gameData.NPCnumber = 2;
            if ([self intersection:npcSprite13 with:playerImage]) {
                gameData.enemyID = @"";
                [self initiateBattle];
            }
        }
        if (!enteringBattle) {
            if (gameData.moveY < 1) {
                gameData.gridY = 7;
                gameData.NPCalive = 0;
                gameData.NPC2alive = 0;
                [self goToCard:gameData.northcard];
            } else
                if (gameData.moveY > 7) {
                    gameData.gridY = 1;
                    gameData.NPCalive = 0;
                    gameData.NPC2alive = 0;
                    if (gameData.card == 79) {
                        [gameData playAudio:@"Cave Music"];
                    }
                    [self goToCard:gameData.southcard];
                } else
                    if (gameData.moveX > 7) {
                        gameData.gridX = 1;
                        gameData.NPCalive = 0;
                        gameData.NPC2alive = 0;
                        [self goToCard:gameData.eastcard];
                    } else
                        if (gameData.moveX < 1) {
                            gameData.gridX = 7;
                            gameData.NPCalive = 0;
                            gameData.NPC2alive = 0;
                            [self goToCard:gameData.westcard];
                        } else if (newtile == empty) {
                            if (keydown == UPARROW) gameData.playerY = gameData.playerY - 44;
                            if (keydown == DOWNARROW) gameData.playerY = gameData.playerY + 44;
                            if (keydown == LEFTARROW) gameData.playerX = gameData.playerX - 44;
                            if (keydown == RIGHTARROW) gameData.playerX = gameData.playerX + 44;
                            gameData.gridY = gameData.moveY;
                            gameData.gridX = gameData.moveX;
                            gameData.walk = gameData.walk + 1;
                        } else
                            if (newtile == wall) {
                                gameData.moveY = gameData.gridY;
                                gameData.moveX = gameData.gridX;
                            }
        }
        if (gameData.walk > gameData.walktime) {
            gameData.walk = (rand()%10)+1;
            gameData.walkHPup = (rand()%3)+1;
            gameData.walkMPup = (rand()%2)+1;
            gameData.playerHP = gameData.playerHP + gameData.walkHPup;
            if (gameData.playerHP > gameData.maxHP) gameData.playerHP = gameData.maxHP;
            gameData.playerMP = gameData.playerMP + gameData.walkMPup;
            if (gameData.playerMP > gameData.maxMP) gameData.playerMP = gameData.maxMP;
        }
    }
    
    if (prevCard == gameData.card) {
        [playerImage.layer removeAllAnimations];
        [UIView animateWithDuration:0.25 delay:0.0 options:UIViewAnimationOptionAllowUserInteraction animations:^{[self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];} completion:nil];
    } else {
        [playerImage.layer removeAllAnimations];
        [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
    }
    //[self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
    
    if (gameData.card == 79) {
        int tilechange = 0;
        if (gameData.tilepuzzlecomplete == 0) {
            if ([self intersection:tileSprite1 with:playerImage]) {
                tilechange = 1;
                gameData.tile1 = !gameData.tile1;
                gameData.tile4 = !gameData.tile4;
            }
            if ([self intersection:tileSprite2 with:playerImage]) {
                tilechange = 1;
                gameData.tile1 = !gameData.tile1;
                gameData.tile2 = !gameData.tile2;
                gameData.tile5 = !gameData.tile5;
            }
            if ([self intersection:tileSprite3 with:playerImage]) {
                tilechange = 1;
                gameData.tile3 = !gameData.tile3;
                gameData.tile5 = !gameData.tile5;
            }
            if ([self intersection:tileSprite4 with:playerImage]) {
                tilechange = 1;
                gameData.tile1 = !gameData.tile1;
                gameData.tile3 = !gameData.tile3;
                gameData.tile4 = !gameData.tile4;
            }
            if ([self intersection:tileSprite5 with:playerImage]) {
                tilechange = 1;
                gameData.tile1 = !gameData.tile1;
                gameData.tile5 = !gameData.tile5;
            }
            gameData.greentiles = 0;
            NSString* redGlow = @"Red Glow.gif";
            NSString* greenGlow = @"Green Glow.gif";
            if (gameData.tile1 == 0) {
                tileSprite1 = [self updateSprite:tileSprite1 x:49 y:137 image:redGlow];
            } else {
                tileSprite1 = [self updateSprite:tileSprite1 x:49 y:137 image:greenGlow];
                gameData.greentiles = gameData.greentiles + 1;
            }
            if (gameData.tile2 == 0) {
                tileSprite2 = [self updateSprite:tileSprite2 x:93 y:137 image:redGlow];
            } else {
                tileSprite2 = [self updateSprite:tileSprite2 x:93 y:137 image:greenGlow];
                gameData.greentiles = gameData.greentiles + 1;
            }
            if (gameData.tile3 == 0) {
                tileSprite3 = [self updateSprite:tileSprite3 x:137 y:137 image:redGlow];
            } else {
                tileSprite3 = [self updateSprite:tileSprite3 x:137 y:137 image:greenGlow];
                gameData.greentiles = gameData.greentiles + 1;
            }
            if (gameData.tile4 == 0) {
                tileSprite4 = [self updateSprite:tileSprite4 x:181 y:137 image:redGlow];
            } else {
                tileSprite4 = [self updateSprite:tileSprite4 x:181 y:137 image:greenGlow];
                gameData.greentiles = gameData.greentiles + 1;
            }
            if (gameData.tile5 == 0) {
                tileSprite5 = [self updateSprite:tileSprite5 x:225 y:137 image:redGlow];
            } else {
                tileSprite5 = [self updateSprite:tileSprite5 x:225 y:137 image:greenGlow];
                gameData.greentiles = gameData.greentiles + 1;
            }
            //if (tilechange == 1) {
            //SPRITE -1 49 137 $tile1sprite$$
            //SPRITE -2 93 137 $tile2sprite$$
            //SPRITE -3 137 137 $tile3sprite$$
            //SPRITE -4 181 137 $tile4sprite$$
            //SPRITE 5 225 137 $tile5sprite$$
            //}
            if (gameData.greentiles == 5) {
                gameData.tilepuzzlecomplete = 1;
                [gameData playSoundEffect:@"LVup"];
            }
        }
    }
}

- (void)spawnNPC:(int)npcNum {
    int NPCspawnchance = 0,NPCgridY = 0,NPCgridX = 0,NPCspriteX = 0,NPCspriteY = 0,NPCmoveX = 0,NPCmoveY = 0;
    NSString* NPCsprite;
    //For easier finding
    if (gameData.card < 113) {
        switch (gameData.card) {
            case 50: {
                NPCspawnchance = (rand()%8)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%2)+1;
                    if (NPCtype == 1) NPCsprite = @"Large Rat.gif";
                    if (NPCtype == 2) NPCsprite = @"Shadow Skulker.gif";
                    if (NPCtype == 3) NPCsprite = @"GoblinM1.gif";
                    int NPCspawnlocation = (rand()%2)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 3;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 2;
                    }
                }
                break;
            }
            case 51: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%3)+1;
                    if (NPCtype == 1) NPCsprite = @"Large Rat.gif";
                    if (NPCtype == 2) NPCsprite = @"Shadow Skulker.gif";
                    if (NPCtype == 3) NPCsprite = @"GoblinM1.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 5;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 4;
                    }
                }
                break;
            }
            case 52: {
                NPCspawnchance = (rand()%7)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%3)+1;
                    if (NPCtype == 1) NPCsprite = @"Large Rat.gif";
                    if (NPCtype == 2) NPCsprite = @"Shadow Skulker.gif";
                    if (NPCtype == 3) NPCsprite = @"GoblinM1.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 4;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 5;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 2;
                    }
                }
                break;
            }
            case 53: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%3)+1;
                    if (NPCtype == 1) NPCsprite = @"Large Rat.gif";
                    if (NPCtype == 2) NPCsprite = @"Shadow Skulker.gif";
                    if (NPCtype == 3) NPCsprite = @"GoblinM1.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 3;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 3;
                    }
                }
                break;
            }
            case 54: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%3)+1;
                    if (NPCtype == 1) NPCsprite = @"Large Rat.gif";
                    if (NPCtype == 2) NPCsprite = @"Shadow Skulker.gif";
                    if (NPCtype == 3) NPCsprite = @"GoblinM1.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 3;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 4;
                    }
                }
                break;
            }
            case 55: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%3)+1;
                    if (NPCtype == 1) NPCsprite = @"Large Rat.gif";
                    if (NPCtype == 2) NPCsprite = @"Shadow Skulker.gif";
                    if (NPCtype == 3) NPCsprite = @"GoblinM1.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 5;
                        NPCgridX = 2;
                    }
                }
                break;
            }
            case 56: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%3)+1;
                    if (NPCtype == 1) NPCsprite = @"Large Rat.gif";
                    if (NPCtype == 2) NPCsprite = @"Shadow Skulker.gif";
                    if (NPCtype == 3) NPCsprite = @"GoblinM1.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 3;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 5;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 2;
                    }
                }
                break;
            }
            case 60: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Rat.gif";
                    if (NPCtype == 2) NPCsprite = @"GoblinM2.gif";
                    if (NPCtype == 3) NPCsprite = @"GoblinM3.gif";
                    if (NPCtype == 4) NPCsprite = @"GoblinM4.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 3;
                        NPCgridX = 4;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 5;
                    }
                }
                break;
            }
            case 61: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Rat.gif";
                    if (NPCtype == 2) NPCsprite = @"GoblinM2.gif";
                    if (NPCtype == 3) NPCsprite = @"GoblinM3.gif";
                    if (NPCtype == 4) NPCsprite = @"GoblinM4.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 4;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 5;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 6;
                    }
                }
                break;
            }
            case 62: {
                NPCspawnchance = (rand()%10)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Rat.gif";
                    if (NPCtype == 2) NPCsprite = @"GoblinM2.gif";
                    if (NPCtype == 3) NPCsprite = @"GoblinM3.gif";
                    if (NPCtype == 4) NPCsprite = @"GoblinM4.gif";
                    int NPCspawnlocation = (rand()%2)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 6;
                        NPCgridX = 5;
                    }
                }
                break;
            }
            case 63: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Rat.gif";
                    if (NPCtype == 2) NPCsprite = @"GoblinM2.gif";
                    if (NPCtype == 3) NPCsprite = @"GoblinM3.gif";
                    if (NPCtype == 4) NPCsprite = @"GoblinM4.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 4;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 5;
                    }
                }
                break;
            }
            case 64: {
                NPCspawnchance = (rand()%7)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Rat.gif";
                    if (NPCtype == 2) NPCsprite = @"GoblinM2.gif";
                    if (NPCtype == 3) NPCsprite = @"GoblinM3.gif";
                    if (NPCtype == 4) NPCsprite = @"GoblinM4.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 6;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 6;
                        NPCgridX = 4;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 6;
                    }
                }
                break;
            }
            case 65: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Rat.gif";
                    if (NPCtype == 2) NPCsprite = @"GoblinM2.gif";
                    if (NPCtype == 3) NPCsprite = @"GoblinM3.gif";
                    if (NPCtype == 4) NPCsprite = @"GoblinM4.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 5;
                        NPCgridX = 2;
                    }
                }
                break;
            }
            case 67: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Rat.gif";
                    if (NPCtype == 2) NPCsprite = @"GoblinM2.gif";
                    if (NPCtype == 3) NPCsprite = @"GoblinM3.gif";
                    if (NPCtype == 4) NPCsprite = @"GoblinM4.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 4;
                    }
                }
                break;
            }
            case 68: {
                NPCspawnchance = (rand()%7)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Shadow Skulker.gif";
                    if (NPCtype == 2) NPCsprite = @"GoblinM2.gif";
                    if (NPCtype == 3) NPCsprite = @"GoblinM3.gif";
                    if (NPCtype == 4) NPCsprite = @"GoblinM4.gif";
                    int NPCspawnlocation = (rand()%2)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 3;
                        NPCgridX = 2;
                    }
                }
                break;
            }
            case 70: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Rat.gif";
                    if (NPCtype == 2) NPCsprite = @"GoblinM2.gif";
                    if (NPCtype == 3) NPCsprite = @"GoblinM3.gif";
                    if (NPCtype == 4) NPCsprite = @"GoblinM4.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 3;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 5;
                        NPCgridX = 4;
                    }
                }
                break;
            }
            case 75: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Shadow Skulker.gif";
                    if (NPCtype == 2) NPCsprite = @"OrcM1.gif";
                    if (NPCtype == 3) NPCsprite = @"OrcM2.gif";
                    if (NPCtype == 4) NPCsprite = @"OrcM3.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 6;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 5;
                    }
                }
                break;
            }
            case 76: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Shadow Skulker.gif";
                    if (NPCtype == 2) NPCsprite = @"OrcM1.gif";
                    if (NPCtype == 3) NPCsprite = @"OrcM2.gif";
                    if (NPCtype == 4) NPCsprite = @"OrcM3.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 4;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 5;
                        NPCgridX = 4;
                    }
                }
                break;
            }
            case 77: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Shadow Skulker.gif";
                    if (NPCtype == 2) NPCsprite = @"OrcM1.gif";
                    if (NPCtype == 3) NPCsprite = @"OrcM2.gif";
                    if (NPCtype == 4) NPCsprite = @"OrcM3.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 3;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 5;
                        NPCgridX = 3;
                    }
                }
                break;
            }
            case 78: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Shadow Skulker.gif";
                    if (NPCtype == 2) NPCsprite = @"OrcM1.gif";
                    if (NPCtype == 3) NPCsprite = @"OrcM2.gif";
                    if (NPCtype == 4) NPCsprite = @"OrcM3.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 4;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 2;
                    }
                }
                break;
            }
            case 80: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Shadow Skulker.gif";
                    if (NPCtype == 2) NPCsprite = @"OrcM1.gif";
                    if (NPCtype == 3) NPCsprite = @"OrcM2.gif";
                    if (NPCtype == 4) NPCsprite = @"OrcM3.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 2;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 5;
                    }
                }
                break;
            }
            case 81: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Shadow Skulker.gif";
                    if (NPCtype == 2) NPCsprite = @"OrcM1.gif";
                    if (NPCtype == 3) NPCsprite = @"OrcM2.gif";
                    if (NPCtype == 4) NPCsprite = @"OrcM3.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 4;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 5;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 6;
                    }
                }
                break;
            }
            case 82: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Shadow Skulker.gif";
                    if (NPCtype == 2) NPCsprite = @"OrcM1.gif";
                    if (NPCtype == 3) NPCsprite = @"OrcM2.gif";
                    if (NPCtype == 4) NPCsprite = @"OrcM3.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 1;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 3;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 2;
                    }
                }
                break;
            }
            case 83: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Shadow Skulker.gif";
                    if (NPCtype == 2) NPCsprite = @"OrcM1.gif";
                    if (NPCtype == 3) NPCsprite = @"OrcM2.gif";
                    if (NPCtype == 4) NPCsprite = @"OrcM3.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 3;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 5;
                        NPCgridX = 4;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 5;
                    }
                }
                break;
            }
            case 84: {
                NPCspawnchance = (rand()%15)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Shadow Skulker.gif";
                    if (NPCtype == 2) NPCsprite = @"OrcM1.gif";
                    if (NPCtype == 3) NPCsprite = @"OrcM2.gif";
                    if (NPCtype == 4) NPCsprite = @"OrcM3.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 3;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 5;
                        NPCgridX = 6;
                    }
                }
                break;
            }
            case 86: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Shadow Skulker.gif";
                    if (NPCtype == 2) NPCsprite = @"OrcM1.gif";
                    if (NPCtype == 3) NPCsprite = @"OrcM2.gif";
                    if (NPCtype == 4) NPCsprite = @"OrcM3.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 3;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 3;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 6;
                    }
                }
                break;
            }
            case 87: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"Giant Shadow Skulker.gif";
                    if (NPCtype == 2) NPCsprite = @"OrcM1.gif";
                    if (NPCtype == 3) NPCsprite = @"OrcM2.gif";
                    if (NPCtype == 4) NPCsprite = @"OrcM3.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 3;
                        NPCgridX = 4;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 2;
                    }
                }
                break;
            }
            case 91: {
                NPCspawnchance = (rand()%20)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"ImpM1.gif";
                    if (NPCtype == 2) NPCsprite = @"ImpM2.gif";
                    if (NPCtype == 3) NPCsprite = @"ImpM3.gif";
                    if (NPCtype == 4) NPCsprite = @"Clay Golem.gif";
                    int NPCspawnlocation = (rand()%2)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 3;
                        NPCgridX = 5;
                    }
                }
                break;
            }
            case 93: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"ImpM1.gif";
                    if (NPCtype == 2) NPCsprite = @"ImpM2.gif";
                    if (NPCtype == 3) NPCsprite = @"ImpM3.gif";
                    if (NPCtype == 4) NPCsprite = @"Clay Golem.gif";
                    int NPCspawnlocation = (rand()%2)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 3;
                    }
                }
                break;
            }
            case 94: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"ImpM1.gif";
                    if (NPCtype == 2) NPCsprite = @"ImpM2.gif";
                    if (NPCtype == 3) NPCsprite = @"ImpM3.gif";
                    if (NPCtype == 4) NPCsprite = @"Clay Golem.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 5;
                        NPCgridX = 6;
                    }
                }
                break;
            }
            case 95: {
                NPCspawnchance = (rand()%15)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"ImpM1.gif";
                    if (NPCtype == 2) NPCsprite = @"ImpM2.gif";
                    if (NPCtype == 3) NPCsprite = @"ImpM3.gif";
                    if (NPCtype == 4) NPCsprite = @"Clay Golem.gif";
                    int NPCspawnlocation = (rand()%2)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 5;
                        NPCgridX = 5;
                    }
                }
                break;
            }
            case 96: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"ImpM1.gif";
                    if (NPCtype == 2) NPCsprite = @"ImpM2.gif";
                    if (NPCtype == 3) NPCsprite = @"ImpM3.gif";
                    if (NPCtype == 4) NPCsprite = @"Clay Golem.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 3;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 5;
                        NPCgridX = 3;
                    }
                }
                break;
            }
            case 97: {
                NPCspawnchance = (rand()%7)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"ImpM1.gif";
                    if (NPCtype == 2) NPCsprite = @"ImpM2.gif";
                    if (NPCtype == 3) NPCsprite = @"ImpM3.gif";
                    if (NPCtype == 4) NPCsprite = @"Clay Golem.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 3;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 5;
                        NPCgridX = 2;
                    }
                }
                break;
            }
            case 98: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"ImpM1.gif";
                    if (NPCtype == 2) NPCsprite = @"ImpM2.gif";
                    if (NPCtype == 3) NPCsprite = @"ImpM3.gif";
                    if (NPCtype == 4) NPCsprite = @"Clay Golem.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 3;
                    }
                }
                break;
            }
            case 99: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"ImpM1.gif";
                    if (NPCtype == 2) NPCsprite = @"ImpM2.gif";
                    if (NPCtype == 3) NPCsprite = @"ImpM3.gif";
                    if (NPCtype == 4) NPCsprite = @"Clay Golem.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 5;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 5;
                        NPCgridX = 6;
                    }
                }
                break;
            }
            case 100: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"ImpM1.gif";
                    if (NPCtype == 2) NPCsprite = @"ImpM2.gif";
                    if (NPCtype == 3) NPCsprite = @"ImpM3.gif";
                    if (NPCtype == 4) NPCsprite = @"Clay Golem.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 3;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 5;
                    }
                }
                break;
            }
            case 101: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"ImpM1.gif";
                    if (NPCtype == 2) NPCsprite = @"ImpM2.gif";
                    if (NPCtype == 3) NPCsprite = @"ImpM3.gif";
                    if (NPCtype == 4) NPCsprite = @"Clay Golem.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 3;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 5;
                        NPCgridX = 3;
                    }
                }
                break;
            }
            case 102: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"ImpM1.gif";
                    if (NPCtype == 2) NPCsprite = @"ImpM2.gif";
                    if (NPCtype == 3) NPCsprite = @"ImpM3.gif";
                    if (NPCtype == 4) NPCsprite = @"Clay Golem.gif";
                    int NPCspawnlocation = 1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 6;
                    }
                }
                break;
            }
            case 103: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"ImpM1.gif";
                    if (NPCtype == 2) NPCsprite = @"ImpM2.gif";
                    if (NPCtype == 3) NPCsprite = @"ImpM3.gif";
                    if (NPCtype == 4) NPCsprite = @"Clay Golem.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 3;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 3;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 5;
                        NPCgridX = 2;
                    }
                }
                break;
            }
            case 104: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"ImpM1.gif";
                    if (NPCtype == 2) NPCsprite = @"ImpM2.gif";
                    if (NPCtype == 3) NPCsprite = @"ImpM3.gif";
                    if (NPCtype == 4) NPCsprite = @"Clay Golem.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 3;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 4;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 6;
                    }
                }
                break;
            }
        }
        
    } else {
        switch (gameData.card) {
            case 113: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"DuergarM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DuergarM2.gif";
                    if (NPCtype == 3) NPCsprite = @"Stone Golem.gif";
                    if (NPCtype == 4) NPCsprite = @"Gargoyle.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 2;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 4;
                        NPCgridX = 6;
                    }
                }
                break;
            }
            case 114: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"DuergarM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DuergarM2.gif";
                    if (NPCtype == 3) NPCsprite = @"Stone Golem.gif";
                    if (NPCtype == 4) NPCsprite = @"Gargoyle.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 4;
                        NPCgridX = 5;
                    }
                }
                break;
            }
            case 115: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"DuergarM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DuergarM2.gif";
                    if (NPCtype == 3) NPCsprite = @"Stone Golem.gif";
                    if (NPCtype == 4) NPCsprite = @"Gargoyle.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 5;
                        NPCgridX = 2;
                    }
                }
                break;
            }
            case 116: {
                NPCspawnchance = (rand()%12)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"DuergarM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DuergarM2.gif";
                    if (NPCtype == 3) NPCsprite = @"Stone Golem.gif";
                    if (NPCtype == 4) NPCsprite = @"Gargoyle.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 5;
                        NPCgridX = 1;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 7;
                        NPCgridX = 6;
                    }
                }
                break;
            }
            case 117: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"DuergarM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DuergarM2.gif";
                    if (NPCtype == 3) NPCsprite = @"Stone Golem.gif";
                    if (NPCtype == 4) NPCsprite = @"Gargoyle.gif";
                    int NPCspawnlocation = (rand()%2)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 6;
                        NPCgridX = 4;
                    }
                }
                break;
            }
            case 118: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"DuergarM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DuergarM2.gif";
                    if (NPCtype == 3) NPCsprite = @"Stone Golem.gif";
                    if (NPCtype == 4) NPCsprite = @"Gargoyle.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 4;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 4;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 6;
                    }
                }
                break;
            }
            case 120: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"DuergarM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DuergarM2.gif";
                    if (NPCtype == 3) NPCsprite = @"Stone Golem.gif";
                    if (NPCtype == 4) NPCsprite = @"Gargoyle.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 3;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 4;
                    }
                }
                break;
            }
            case 121: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%4)+1;
                    if (NPCtype == 1) NPCsprite = @"DuergarM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DuergarM2.gif";
                    if (NPCtype == 3) NPCsprite = @"Stone Golem.gif";
                    if (NPCtype == 4) NPCsprite = @"Gargoyle.gif";
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 3;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 5;
                        NPCgridX = 4;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 5;
                        NPCgridX = 5;
                    }
                }
                break;
            }
            case 126: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%7)+1;
                    if (NPCtype == 1) NPCsprite = @"DrowM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DrowF1.gif";
                    if (NPCtype == 3) NPCsprite = @"DrowM2.gif";
                    if (NPCtype == 4) NPCsprite = @"DrowF2.gif";
                    if (NPCtype == 5) NPCsprite = @"DrowM3.gif";
                    if (NPCtype == 6) NPCsprite = @"DrowF3.gif";
                    if (NPCtype == 7) NPCsprite = @"IllithidM1.gif";
                    
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 2;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 2;
                    }
                }
                break;
            }
            case 127: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%7)+1;
                    if (NPCtype == 1) NPCsprite = @"DrowM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DrowF1.gif";
                    if (NPCtype == 3) NPCsprite = @"DrowM2.gif";
                    if (NPCtype == 4) NPCsprite = @"DrowF2.gif";
                    if (NPCtype == 5) NPCsprite = @"DrowM3.gif";
                    if (NPCtype == 6) NPCsprite = @"DrowF3.gif";
                    if (NPCtype == 7) NPCsprite = @"IllithidM1.gif";
                    
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 5;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 3;
                    }
                }
                break;
            }
            case 128: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%7)+1;
                    if (NPCtype == 1) NPCsprite = @"DrowM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DrowF1.gif";
                    if (NPCtype == 3) NPCsprite = @"DrowM2.gif";
                    if (NPCtype == 4) NPCsprite = @"DrowF2.gif";
                    if (NPCtype == 5) NPCsprite = @"DrowM3.gif";
                    if (NPCtype == 6) NPCsprite = @"DrowF3.gif";
                    if (NPCtype == 7) NPCsprite = @"IllithidM1.gif";
                    
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 3;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 4;
                        NPCgridX = 4;
                    }
                }
                break;
            }
            case 129: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%7)+1;
                    if (NPCtype == 1) NPCsprite = @"DrowM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DrowF1.gif";
                    if (NPCtype == 3) NPCsprite = @"DrowM2.gif";
                    if (NPCtype == 4) NPCsprite = @"DrowF2.gif";
                    if (NPCtype == 5) NPCsprite = @"DrowM3.gif";
                    if (NPCtype == 6) NPCsprite = @"DrowF3.gif";
                    if (NPCtype == 7) NPCsprite = @"IllithidM1.gif";
                    
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 4;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 5;
                        NPCgridX = 3;
                    }
                }
                break;
            }
            case 130: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%7)+1;
                    if (NPCtype == 1) NPCsprite = @"DrowM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DrowF1.gif";
                    if (NPCtype == 3) NPCsprite = @"DrowM2.gif";
                    if (NPCtype == 4) NPCsprite = @"DrowF2.gif";
                    if (NPCtype == 5) NPCsprite = @"DrowM3.gif";
                    if (NPCtype == 6) NPCsprite = @"DrowF3.gif";
                    if (NPCtype == 7) NPCsprite = @"IllithidM1.gif";
                    
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 5;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 3;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 5;
                        NPCgridX = 2;
                    }
                }
                break;
            }
            case 131: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%7)+1;
                    if (NPCtype == 1) NPCsprite = @"DrowM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DrowF1.gif";
                    if (NPCtype == 3) NPCsprite = @"DrowM2.gif";
                    if (NPCtype == 4) NPCsprite = @"DrowF2.gif";
                    if (NPCtype == 5) NPCsprite = @"DrowM3.gif";
                    if (NPCtype == 6) NPCsprite = @"DrowF3.gif";
                    if (NPCtype == 7) NPCsprite = @"IllithidM1.gif";
                    
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 5;
                    }
                }
                break;
            }
            case 132: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%7)+1;
                    if (NPCtype == 1) NPCsprite = @"DrowM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DrowF1.gif";
                    if (NPCtype == 3) NPCsprite = @"DrowM2.gif";
                    if (NPCtype == 4) NPCsprite = @"DrowF2.gif";
                    if (NPCtype == 5) NPCsprite = @"DrowM3.gif";
                    if (NPCtype == 6) NPCsprite = @"DrowF3.gif";
                    if (NPCtype == 7) NPCsprite = @"IllithidM1.gif";
                    
                    int NPCspawnlocation = (rand()%2)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 5;
                        NPCgridX = 2;
                    }
                }
                break;
            }
            case 135: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%7)+1;
                    if (NPCtype == 1) NPCsprite = @"DrowM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DrowF1.gif";
                    if (NPCtype == 3) NPCsprite = @"DrowM2.gif";
                    if (NPCtype == 4) NPCsprite = @"DrowF2.gif";
                    if (NPCtype == 5) NPCsprite = @"DrowM3.gif";
                    if (NPCtype == 6) NPCsprite = @"DrowF3.gif";
                    if (NPCtype == 7) NPCsprite = @"IllithidM1.gif";
                    
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 3;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 4;
                        NPCgridX = 5;
                    }
                }
                break;
            }
            case 136: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%7)+1;
                    if (NPCtype == 1) NPCsprite = @"DrowM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DrowF1.gif";
                    if (NPCtype == 3) NPCsprite = @"DrowM2.gif";
                    if (NPCtype == 4) NPCsprite = @"DrowF2.gif";
                    if (NPCtype == 5) NPCsprite = @"DrowM3.gif";
                    if (NPCtype == 6) NPCsprite = @"DrowF3.gif";
                    if (NPCtype == 7) NPCsprite = @"IllithidM1.gif";
                    
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 4;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 2;
                    }
                }
                break;
            }
            case 137: {
                NPCspawnchance = (rand()%15)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%7)+1;
                    if (NPCtype == 1) NPCsprite = @"DrowM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DrowF1.gif";
                    if (NPCtype == 3) NPCsprite = @"DrowM2.gif";
                    if (NPCtype == 4) NPCsprite = @"DrowF2.gif";
                    if (NPCtype == 5) NPCsprite = @"DrowM3.gif";
                    if (NPCtype == 6) NPCsprite = @"DrowF3.gif";
                    if (NPCtype == 7) NPCsprite = @"IllithidM1.gif";
                    
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 5;
                        NPCgridX = 3;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 5;
                    }
                }
                break;
            }
            case 138: {
                NPCspawnchance = (rand()%20)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%7)+1;
                    if (NPCtype == 1) NPCsprite = @"DrowM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DrowF1.gif";
                    if (NPCtype == 3) NPCsprite = @"DrowM2.gif";
                    if (NPCtype == 4) NPCsprite = @"DrowF2.gif";
                    if (NPCtype == 5) NPCsprite = @"DrowM3.gif";
                    if (NPCtype == 6) NPCsprite = @"DrowF3.gif";
                    if (NPCtype == 7) NPCsprite = @"IllithidM1.gif";
                    
                    int NPCspawnlocation = (rand()%2)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 6;
                        NPCgridX = 1;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 6;
                        NPCgridX = 7;
                    }
                }
                break;
            }
            case 139: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%7)+1;
                    if (NPCtype == 1) NPCsprite = @"DrowM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DrowF1.gif";
                    if (NPCtype == 3) NPCsprite = @"DrowM2.gif";
                    if (NPCtype == 4) NPCsprite = @"DrowF2.gif";
                    if (NPCtype == 5) NPCsprite = @"DrowM3.gif";
                    if (NPCtype == 6) NPCsprite = @"DrowF3.gif";
                    if (NPCtype == 7) NPCsprite = @"IllithidM1.gif";
                    
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 4;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 2;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 6;
                    }
                }
                break;
            }
            case 140: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%7)+1;
                    if (NPCtype == 1) NPCsprite = @"DrowM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DrowF1.gif";
                    if (NPCtype == 3) NPCsprite = @"DrowM2.gif";
                    if (NPCtype == 4) NPCsprite = @"DrowF2.gif";
                    if (NPCtype == 5) NPCsprite = @"DrowM3.gif";
                    if (NPCtype == 6) NPCsprite = @"DrowF3.gif";
                    if (NPCtype == 7) NPCsprite = @"IllithidM1.gif";
                    
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 4;
                        NPCgridX = 4;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 5;
                        NPCgridX = 6;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 3;
                    }
                }
                break;
            }
            case 141: {
                NPCspawnchance = (rand()%5)+1;
                if (NPCspawnchance == 1) {
                    int NPCtype = (rand()%7)+1;
                    if (NPCtype == 1) NPCsprite = @"DrowM1.gif";
                    if (NPCtype == 2) NPCsprite = @"DrowF1.gif";
                    if (NPCtype == 3) NPCsprite = @"DrowM2.gif";
                    if (NPCtype == 4) NPCsprite = @"DrowF2.gif";
                    if (NPCtype == 5) NPCsprite = @"DrowM3.gif";
                    if (NPCtype == 6) NPCsprite = @"DrowF3.gif";
                    if (NPCtype == 7) NPCsprite = @"IllithidM1.gif";
                    
                    int NPCspawnlocation = (rand()%3)+1;
                    if (NPCspawnlocation == 1) {
                        NPCgridY = 2;
                        NPCgridX = 4;
                    }
                    if (NPCspawnlocation == 2) {
                        NPCgridY = 5;
                        NPCgridX = 2;
                    }
                    if (NPCspawnlocation == 3) {
                        NPCgridY = 6;
                        NPCgridX = 5;
                    }
                }
                break;
            }
        }
    }
    if (NPCspawnchance == 1) {
        
        NPCspriteY = NPCgridY * 44;
        NPCspriteY = NPCspriteY - 39;
        NPCspriteX = NPCgridX * 44;
        NPCspriteX = NPCspriteX - 39;
        NPCmoveY = NPCgridY;
        NPCmoveX = NPCgridX;
        
        if (npcNum == 1) {
            gameData.NPCmoveY = NPCmoveY;
            gameData.NPCmoveX = NPCmoveX;
            gameData.NPCgridY=NPCgridY;
            gameData.NPCgridX=NPCgridX;
            gameData.NPCspriteX=NPCspriteX;
            gameData.NPCspriteY=NPCspriteY;
            gameData.NPCsprite=NPCsprite;
            npcSprite14 = [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY image:gameData.NPCsprite];
            gameData.NPCalive = 1;
        }
        if (npcNum == 2) {
            gameData.NPC2moveY = NPCmoveY;
            gameData.NPC2moveX = NPCmoveX;
            gameData.NPC2gridY=NPCgridY;
            gameData.NPC2gridX=NPCgridX;
            gameData.NPC2spriteX=NPCspriteX;
            gameData.NPC2spriteY=NPCspriteY;
            gameData.NPC2sprite=NPCsprite;
            npcSprite13 = [self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY image:gameData.NPC2sprite];
            gameData.NPC2alive = 1;
        }
    }
}

- (void)onTimer {
    int empty = 0,portal1 = 1,destroyedHouse = 1, wall = 1, moveleft = 1, moveup = 2, moveright = 3, movedown = 4;
    //For Special NPCS
    switch (gameData.card) {
        case 20: {
            if (gameData.card20event > -1) gameData.card20event = gameData.card20event + 1;
            if (gameData.card20event == 30) 
            {
                treasureChest5 = [self updateSprite:treasureChest5 x:5 y:269 image:@"Treasure Chest.gif"];
            }
            if (gameData.card20event == 31) {
                [UIView animateWithDuration:0.25 delay:0.25 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                        [self updateSprite:treasureChest5 x:49 y:269];
                    } completion:nil];
            }
            if (gameData.card20event == 32) {
                [UIView animateWithDuration:0.25 delay:0.25 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                        [self updateSprite:treasureChest5 x:49 y:225];
                    } completion:nil];
            }
            if (gameData.card20event == 33) {
                [UIView animateWithDuration:0.25 delay:0.25 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                        [self updateSprite:treasureChest5 x:93 y:225];
                    } completion:nil];
                gameData.card20event = -1;
            }
            break;
        }
        case 31: {
            if (gameData.NPCalive == 1) {
                
                gameData.NPCnewtile = empty;
                //----NPC AI--------------------------------------------------------------------------------------
                //     The simple NPC AI:
                gameData.NPCaction = (rand()%4)+1;
                if (gameData.NPCaction == moveup) gameData.NPCmoveY = gameData.NPCgridY - 1;
                if (gameData.NPCaction == movedown) gameData.NPCmoveY = gameData.NPCgridY + 1;
                if (gameData.NPCaction == moveleft) gameData.NPCmoveX = gameData.NPCgridX - 1;
                if (gameData.NPCaction == moveright) gameData.NPCmoveX = gameData.NPCgridX + 1;
                if (gameData.NPCmoveY == 0) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveY == 8) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveX == 0) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveX == 8) gameData.NPCnewtile = wall;
                //---/NPC AI--------------------------------------------------------------------------------------
                //----GRID CODE----------------------------------------------------------------------------------- 
                if (gameData.NPCmoveY == 1) gameData.NPCnewtile = wall;
                
                switch (gameData.NPCmoveX) {
                    case 1: {gameData.NPCnewtile = wall;break;}
                    case 2: {gameData.NPCnewtile = wall;break;}
                    case 3: {gameData.NPCnewtile = wall;break;}
                    case 4: {gameData.NPCnewtile = wall;break;}
                    case 6: {gameData.NPCnewtile = wall;break;}
                    case 7: {gameData.NPCnewtile = wall;break;}
                }
                if (gameData.NPCmoveY == 3) {
                    switch (gameData.NPCmoveX) {
                        case 6: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                if (gameData.NPCmoveY == 4) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 2: {gameData.NPCnewtile = wall;break;}
                        case 6: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                if (gameData.NPCmoveY == 5) {
                    switch (gameData.NPCmoveX) {
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                if (gameData.NPCmoveY == 6) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 2: {gameData.NPCnewtile = wall;break;}
                        case 3: {gameData.NPCnewtile = wall;break;}
                        case 4: {gameData.NPCnewtile = wall;break;}
                        case 6: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                
                if (gameData.NPCmoveY == 7) gameData.NPCnewtile = wall;
                //---/GRID CODE----------------------------------------------------------------------------------- 
                //----MOVE NPC SPRITE----------------------------------------------------------------------------
                if (gameData.NPCnewtile == empty) {
                    if (gameData.NPCaction == moveup) {gameData.NPCspriteY = gameData.NPCspriteY - 44;}
                    if (gameData.NPCaction == movedown) {gameData.NPCspriteY = gameData.NPCspriteY + 44;}
                    if (gameData.NPCaction == moveleft) {gameData.NPCspriteX = gameData.NPCspriteX - 44;}
                    if (gameData.NPCaction == moveright) {gameData.NPCspriteX = gameData.NPCspriteX + 44;}
                    gameData.NPCgridY = gameData.NPCmoveY;
                    gameData.NPCgridX = gameData.NPCmoveX;
                } else {
                    gameData.NPCmoveY = gameData.NPCgridY;
                    gameData.NPCmoveX = gameData.NPCgridX;
                }
                [UIView animateWithDuration:0.25 delay:0.25 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                    [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY];
                } completion:nil];
            }
            //---/MOVE NPC SPRITE----------------------------------------------------------------------------
            break;
        }
        case 36: {
            if (gameData.NPCalive == 1) {
                
                gameData.NPCnewtile = empty;
                //----NPC AI--------------------------------------------------------------------------------------
                //     The simple NPC AI:
                gameData.NPCaction = (rand()%4)+1;
                if (gameData.NPCaction == moveup) gameData.NPCmoveY = gameData.NPCgridY - 1;
                if (gameData.NPCaction == movedown) gameData.NPCmoveY = gameData.NPCgridY + 1;
                if (gameData.NPCaction == moveleft) gameData.NPCmoveX = gameData.NPCgridX - 1;
                if (gameData.NPCaction == moveright) gameData.NPCmoveX = gameData.NPCgridX + 1;
                if (gameData.NPCmoveY == 0) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveY == 8) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveX == 0) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveX == 8) gameData.NPCnewtile = wall;
                //---/NPC AI--------------------------------------------------------------------------------------
                //----GRID CODE----------------------------------------------------------------------------------- 
                if (gameData.NPCmoveY == 1) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 2: {gameData.NPCnewtile = wall;break;}
                        case 3: {gameData.NPCnewtile = wall;break;}
                        case 5: {gameData.NPCnewtile = wall;break;}
                        case 6: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                if (gameData.NPCmoveY == 2) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 3: {gameData.NPCnewtile = destroyedHouse;break;}
                        case 5: {gameData.NPCnewtile = destroyedHouse;break;}
                        case 6: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                
                if (gameData.NPCmoveY == 3) {
                    switch (gameData.NPCmoveX) {
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                if (gameData.NPCmoveY == 4) {
                    switch (gameData.NPCmoveX) {
                        case 2: {gameData.NPCnewtile = wall;break;}
                        case 4: {gameData.NPCnewtile = destroyedHouse;break;}
                        case 5: {gameData.NPCnewtile = wall;break;}
                    }
                }
                if (gameData.NPCmoveY == 5) {
                    switch (gameData.NPCmoveX) {
                        case 5: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                if (gameData.NPCmoveY == 6) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 2: {gameData.NPCnewtile = wall;break;}
                        case 6: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                
                if (gameData.NPCmoveY == 7) gameData.NPCnewtile = wall;
                //---/GRID CODE----------------------------------------------------------------------------------- 
                //----MOVE NPC SPRITE----------------------------------------------------------------------------
                if (gameData.NPCnewtile == empty) {
                    if (gameData.NPCaction == moveup) {gameData.NPCspriteY = gameData.NPCspriteY - 44;}
                    if (gameData.NPCaction == movedown) {gameData.NPCspriteY = gameData.NPCspriteY + 44;}
                    if (gameData.NPCaction == moveleft) {gameData.NPCspriteX = gameData.NPCspriteX - 44;}
                    if (gameData.NPCaction == moveright) {gameData.NPCspriteX = gameData.NPCspriteX + 44;}
                    gameData.NPCgridY = gameData.NPCmoveY;
                    gameData.NPCgridX = gameData.NPCmoveX;
                } else {
                    gameData.NPCmoveY = gameData.NPCgridY;
                    gameData.NPCmoveX = gameData.NPCgridX;
                }
                [UIView animateWithDuration:0.25 delay:0.25 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                    [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY];
                } completion:nil];
            }
            //---/MOVE NPC SPRITE----------------------------------------------------------------------------
            break;
        }
        case 39: {
            if (gameData.NPCalive == 1) {
                
                gameData.NPCnewtile = empty;
                //----NPC AI--------------------------------------------------------------------------------------
                //     The simple NPC AI:
                gameData.NPCaction = (rand()%4)+1;
                if (gameData.NPCaction == moveup) gameData.NPCmoveY = gameData.NPCgridY - 1;
                if (gameData.NPCaction == movedown) gameData.NPCmoveY = gameData.NPCgridY + 1;
                if (gameData.NPCaction == moveleft) gameData.NPCmoveX = gameData.NPCgridX - 1;
                if (gameData.NPCaction == moveright) gameData.NPCmoveX = gameData.NPCgridX + 1;
                if (gameData.NPCmoveY == 0) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveY == 8) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveX == 0) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveX == 8) gameData.NPCnewtile = wall;
                //---/NPC AI--------------------------------------------------------------------------------------
                //----GRID CODE----------------------------------------------------------------------------------- 
                if (gameData.NPCmoveY == 1) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveY == 2) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 4: {gameData.NPCnewtile = wall;break;}
                        case 5: {gameData.NPCnewtile = wall;break;}
                        case 6: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                
                if (gameData.NPCmoveY == 3) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 4: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                if (gameData.NPCmoveY == 4) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 2: {gameData.NPCnewtile = wall;break;}
                        case 4: {gameData.NPCnewtile = wall;break;}
                        case 6: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                if (gameData.NPCmoveY == 5) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                if (gameData.NPCmoveY == 6) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 5: {gameData.NPCnewtile = wall;break;}
                        case 6: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                
                if (gameData.NPCmoveY == 7) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 2: {gameData.NPCnewtile = wall;break;}
                        case 3: {gameData.NPCnewtile = wall;break;}
                        case 4: {gameData.NPCnewtile = portal1;break;}
                        case 5: {gameData.NPCnewtile = wall;break;}
                        case 6: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                //---/GRID CODE----------------------------------------------------------------------------------- 
                //----MOVE NPC SPRITE----------------------------------------------------------------------------
                if (gameData.NPCnewtile == empty) {
                    if (gameData.NPCaction == moveup) {gameData.NPCspriteY = gameData.NPCspriteY - 44;}
                    if (gameData.NPCaction == movedown) {gameData.NPCspriteY = gameData.NPCspriteY + 44;}
                    if (gameData.NPCaction == moveleft) {gameData.NPCspriteX = gameData.NPCspriteX - 44;}
                    if (gameData.NPCaction == moveright) {gameData.NPCspriteX = gameData.NPCspriteX + 44;}
                    gameData.NPCgridY = gameData.NPCmoveY;
                    gameData.NPCgridX = gameData.NPCmoveX;
                } else {
                    gameData.NPCmoveY = gameData.NPCgridY;
                    gameData.NPCmoveX = gameData.NPCgridX;
                }
                [UIView animateWithDuration:0.25 delay:0.25 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                    [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY];
                } completion:nil];
            }
            //---/MOVE NPC SPRITE----------------------------------------------------------------------------
            break;
        }
        case 40: {
            if (gameData.NPCalive == 1) {
                
                gameData.NPCnewtile = empty;
                //----NPC AI--------------------------------------------------------------------------------------
                //     The simple NPC AI:
                gameData.NPCaction = (rand()%4)+1;
                if (gameData.NPCaction == moveup) gameData.NPCmoveY = gameData.NPCgridY - 1;
                if (gameData.NPCaction == movedown) gameData.NPCmoveY = gameData.NPCgridY + 1;
                if (gameData.NPCaction == moveleft) gameData.NPCmoveX = gameData.NPCgridX - 1;
                if (gameData.NPCaction == moveright) gameData.NPCmoveX = gameData.NPCgridX + 1;
                if (gameData.NPCmoveY == 0) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveY == 8) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveX == 0) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveX == 8) gameData.NPCnewtile = wall;
                //---/NPC AI--------------------------------------------------------------------------------------
                //----GRID CODE----------------------------------------------------------------------------------- 
                if (gameData.NPCmoveY == 1) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveY == 2) gameData.NPCnewtile = wall;
                
                if (gameData.NPCmoveY == 3) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                if (gameData.NPCmoveY == 4) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 2: {gameData.NPCnewtile = wall;break;}
                        case 4: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                if (gameData.NPCmoveY == 5) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 2: {gameData.NPCnewtile = wall;break;}
                        case 3: {gameData.NPCnewtile = wall;break;}
                        case 4: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                if (gameData.NPCmoveY == 6) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 2: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                
                if (gameData.NPCmoveY == 7) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 2: {gameData.NPCnewtile = wall;break;}
                        case 3: {gameData.NPCnewtile = wall;break;}
                        case 4: {gameData.NPCnewtile = wall;break;}
                        case 5: {gameData.NPCnewtile = portal1;break;}
                        case 6: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                //---/GRID CODE----------------------------------------------------------------------------------- 
                //----MOVE NPC SPRITE----------------------------------------------------------------------------
                if (gameData.NPCnewtile == empty) {
                    if (gameData.NPCaction == moveup) {gameData.NPCspriteY = gameData.NPCspriteY - 44;}
                    if (gameData.NPCaction == movedown) {gameData.NPCspriteY = gameData.NPCspriteY + 44;}
                    if (gameData.NPCaction == moveleft) {gameData.NPCspriteX = gameData.NPCspriteX - 44;}
                    if (gameData.NPCaction == moveright) {gameData.NPCspriteX = gameData.NPCspriteX + 44;}
                    gameData.NPCgridY = gameData.NPCmoveY;
                    gameData.NPCgridX = gameData.NPCmoveX;
                } else {
                    gameData.NPCmoveY = gameData.NPCgridY;
                    gameData.NPCmoveX = gameData.NPCgridX;
                }
                [UIView animateWithDuration:0.25 delay:0.25 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                    [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY];
                } completion:nil];
            }
            //---/MOVE NPC SPRITE----------------------------------------------------------------------------
            break;
        }
        case 41: {
            if (gameData.NPCalive == 1) {
                
                gameData.NPCnewtile = empty;
                //----NPC AI--------------------------------------------------------------------------------------
                //     The simple NPC AI:
                gameData.NPCaction = (rand()%4)+1;
                if (gameData.NPCaction == moveup) gameData.NPCmoveY = gameData.NPCgridY - 1;
                if (gameData.NPCaction == movedown) gameData.NPCmoveY = gameData.NPCgridY + 1;
                if (gameData.NPCaction == moveleft) gameData.NPCmoveX = gameData.NPCgridX - 1;
                if (gameData.NPCaction == moveright) gameData.NPCmoveX = gameData.NPCgridX + 1;
                if (gameData.NPCmoveY == 0) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveY == 8) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveX == 0) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveX == 8) gameData.NPCnewtile = wall;
                //---/NPC AI--------------------------------------------------------------------------------------
                //----GRID CODE----------------------------------------------------------------------------------- 
                if (gameData.NPCmoveY == 1) gameData.NPCnewtile = wall;
                if (gameData.NPCmoveY == 3) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 2: {gameData.NPCnewtile = wall;break;}
                        case 3: {gameData.NPCnewtile = wall;break;}
                        case 5: {gameData.NPCnewtile = wall;break;}
                        case 6: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                
                if (gameData.NPCmoveY == 3) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                if (gameData.NPCmoveY == 4) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 3: {gameData.NPCnewtile = wall;break;}
                        case 5: {gameData.NPCnewtile = wall;break;}
                        case 6: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                if (gameData.NPCmoveY == 5) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 2: {gameData.NPCnewtile = wall;break;}
                        case 5: {gameData.NPCnewtile = wall;break;}
                        case 6: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                if (gameData.NPCmoveY == 6) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 5: {gameData.NPCnewtile = wall;break;}
                        case 6: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                
                if (gameData.NPCmoveY == 7) {
                    switch (gameData.NPCmoveX) {
                        case 1: {gameData.NPCnewtile = wall;break;}
                        case 2: {gameData.NPCnewtile = wall;break;}
                        case 3: {gameData.NPCnewtile = portal1;break;}
                        case 4: {gameData.NPCnewtile = wall;break;}
                        case 5: {gameData.NPCnewtile = wall;break;}
                        case 6: {gameData.NPCnewtile = wall;break;}
                        case 7: {gameData.NPCnewtile = wall;break;}
                    }
                }
                //---/GRID CODE----------------------------------------------------------------------------------- 
                //----MOVE NPC SPRITE----------------------------------------------------------------------------
                if (gameData.NPCnewtile == empty) {
                    if (gameData.NPCaction == moveup) {gameData.NPCspriteY = gameData.NPCspriteY - 44;}
                    if (gameData.NPCaction == movedown) {gameData.NPCspriteY = gameData.NPCspriteY + 44;}
                    if (gameData.NPCaction == moveleft) {gameData.NPCspriteX = gameData.NPCspriteX - 44;}
                    if (gameData.NPCaction == moveright) {gameData.NPCspriteX = gameData.NPCspriteX + 44;}
                    gameData.NPCgridY = gameData.NPCmoveY;
                    gameData.NPCgridX = gameData.NPCmoveX;
                } else {
                    gameData.NPCmoveY = gameData.NPCgridY;
                    gameData.NPCmoveX = gameData.NPCgridX;
                }
                [UIView animateWithDuration:0.25 delay:0.25 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                    [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY];
                } completion:nil];
            }
            //---/MOVE NPC SPRITE----------------------------------------------------------------------------
            break;
        }
        case 71: {
            int wait = 1,movedown = 2, moveup = 3, moveright = 4, moveleft = 5;
            int empty = 0, wall = 1;
            if ([self intersection:npcSprite14 with:playerImage]) {
                if (gameData.TCpuzzlecomplete == 0) gameData.TCpuzzlecomplete = 1;
            }
            if (gameData.TCpuzzlecomplete == 0) {
                int NPCnewtile = empty;
                //----NPC AI--------------------------------------------------------------------------------------
                //if (gameData.TCpuzzlecomplete == 0) {
                if (gameData.NPCaction == wait) {
                    if (gameData.gridY == 2) gameData.NPCaction = movedown;
                    if (gameData.gridY == 6) gameData.NPCaction = moveup;
                    if (gameData.gridX == 2) gameData.NPCaction = moveright;
                    if (gameData.gridX == 6) gameData.NPCaction = moveleft;
                }
                //} else {gameData.NPCaction = wait;}
                
                if (gameData.NPCaction == moveup) gameData.NPCmoveY = gameData.NPCgridY - 1;
                if (gameData.NPCaction == movedown) gameData.NPCmoveY = gameData.NPCgridY + 1;
                if (gameData.NPCaction == moveleft) gameData.NPCmoveX = gameData.NPCgridX - 1;
                if (gameData.NPCaction == moveright) gameData.NPCmoveX = gameData.NPCgridX + 1;
                if (gameData.NPCmoveY == 0) NPCnewtile = wall;
                if (gameData.NPCmoveY == 8) NPCnewtile = wall;
                if (gameData.NPCmoveX == 0) NPCnewtile = wall;
                if (gameData.NPCmoveX == 8) NPCnewtile = wall;
                //---/NPC AI--------------------------------------------------------------------------------------
                //---NPC GRID CODE--------------------------------------------------------------------------------
                int NPCmoveXY = 0;
                NPCmoveXY = 7 * gameData.NPCmoveY;
                NPCmoveXY = NPCmoveXY - 7;
                NPCmoveXY = NPCmoveXY +gameData.NPCmoveX;
                
                NSArray* grid = [gameData.gridlayout componentsSeparatedByString: @" "];
                if (NPCmoveXY-1 < 0 || NPCmoveXY-1 > [grid count]-1) {
                    NPCnewtile = wall;
                } else {
                    NPCnewtile = [[grid objectAtIndex:NPCmoveXY-1] intValue];
                }
                //---/NPC GRID CODE------------------------------------------------------------------------------
                //----MOVE NPC SPRITE----------------------------------------------------------------------------
                if (NPCnewtile == empty) {
                    if (gameData.NPCaction == moveup) gameData.NPCspriteY = gameData.NPCspriteY - 44;
                    if (gameData.NPCaction == movedown) gameData.NPCspriteY = gameData.NPCspriteY + 44;
                    if (gameData.NPCaction == moveleft) gameData.NPCspriteX = gameData.NPCspriteX - 44;
                    if (gameData.NPCaction == moveright) gameData.NPCspriteX = gameData.NPCspriteX + 44;
                    gameData.NPCgridY = gameData.NPCmoveY;
                    gameData.NPCgridX = gameData.NPCmoveX;
                } else {
                    gameData.NPCaction = wait;
                    gameData.NPCmoveY = gameData.NPCgridY;
                    gameData.NPCmoveX = gameData.NPCgridX;
                }
                [UIView animateWithDuration:0.25 delay:0.25 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                    [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY];
                } completion:nil];
            }
            //---/MOVE NPC SPRITE----------------------------------------------------------------------------
            //if (gameData.NPCalive > 0) {
            //gameData.NPCnumber = 1;
            
            //}
            //---/NPC CODE-----------------------------------------------------------------------------------
            break;
        }
        case 119: {
            if (gameData.NPCalive == 1) {
                int NPCnewtile = empty;
                //----NPC AI--------------------------------------------------------------------------------------
                //     The simple NPC AI:
                gameData.NPCaction = (rand()%4)+1;
                
                if (gameData.NPCaction == moveup) gameData.NPCmoveY = gameData.NPCgridY - 1;
                if (gameData.NPCaction == movedown) gameData.NPCmoveY = gameData.NPCgridY + 1;
                if (gameData.NPCaction == moveleft) gameData.NPCmoveX = gameData.NPCgridX - 1;
                if (gameData.NPCaction == moveright) gameData.NPCmoveX = gameData.NPCgridX + 1;
                if (gameData.NPCmoveY == 1)  NPCnewtile = wall;
                if (gameData.NPCmoveY == 7)  NPCnewtile = wall;
                if (gameData.NPCmoveX == 1)  NPCnewtile = wall;
                if (gameData.NPCmoveX == 7)  NPCnewtile = wall;
                //---/NPC AI--------------------------------------------------------------------------------------
                //---NPC GRID CODE--------------------------------------------------------------------------------
                int NPCmoveXY = 0;
                NPCmoveXY = 7 * gameData.NPCmoveY;
                NPCmoveXY = NPCmoveXY - 7;
                NPCmoveXY = NPCmoveXY +gameData.NPCmoveX;
                
                NSArray* grid = [gameData.gridlayout componentsSeparatedByString: @" "];
                if (NPCmoveXY-1 < 0 || NPCmoveXY-1 > [grid count]-1) {
                    NPCnewtile = wall;
                } else {
                    NPCnewtile = [[grid objectAtIndex:NPCmoveXY-1] intValue];
                }
                
                //---/NPC GRID CODE------------------------------------------------------------------------------
                //----MOVE NPC SPRITE----------------------------------------------------------------------------
                if (NPCnewtile == empty) {
                    if (gameData.NPCaction == moveup)  gameData.NPCspriteY = gameData.NPCspriteY - 44;
                    if (gameData.NPCaction == movedown)  gameData.NPCspriteY = gameData.NPCspriteY + 44;
                    if (gameData.NPCaction == moveleft)  gameData.NPCspriteX = gameData.NPCspriteX - 44;
                    if (gameData.NPCaction == moveright)  gameData.NPCspriteX = gameData.NPCspriteX + 44;
                    gameData.NPCgridY = gameData.NPCmoveY;
                    gameData.NPCgridX = gameData.NPCmoveX;
                } else {
                    gameData.NPCmoveY = gameData.NPCgridY;
                    gameData.NPCmoveX = gameData.NPCgridX;
                }
                
                [UIView animateWithDuration:0.25 delay:0.25 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                    [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY];
                } completion:nil];
                
                if (gameData.NPCalive > 0) {
                    gameData.NPCnumber = 1;
                    if ([self intersection:playerImage with:npcSprite14]) {
                        gameData.blockrun = 1;
                        gameData.doppelgangerevent = 1;
                        [self initiateBattle];
                    }
                }
            }
            break;
        }
        case 148: {
            if (gameData.NPCalive == 1) {
                int NPCnewtile = empty;
                //----NPC AI--------------------------------------------------------------------------------------
                //     The simple NPC AI:
                gameData.NPCaction = (rand()%4)+1;
                
                if (gameData.NPCaction == moveup) gameData.NPCmoveY = gameData.NPCgridY - 1;
                if (gameData.NPCaction == movedown) gameData.NPCmoveY = gameData.NPCgridY + 1;
                if (gameData.NPCaction == moveleft) gameData.NPCmoveX = gameData.NPCgridX - 1;
                if (gameData.NPCaction == moveright) gameData.NPCmoveX = gameData.NPCgridX + 1;
                if (gameData.NPCmoveY == 1)  NPCnewtile = wall;
                if (gameData.NPCmoveY == 7)  NPCnewtile = wall;
                if (gameData.NPCmoveX == 1)  NPCnewtile = wall;
                if (gameData.NPCmoveX == 7)  NPCnewtile = wall;
                
                if (gameData.lv7B1 == 0) {
                    if (gameData.gridY >= gameData.NPCmoveY) {
                        if (gameData.gridX >= gameData.NPCmoveX) {
                            gameData.battlereturn = gameData.card;
                            gameData.bossbattle = 1;
                            gameData.NPCalive = 0;
                            gameData.NPC2alive = 0;
                            gameData.NPCnumber = 1;
                            gameData.NPCsprite = @"Black Dragon.gif";
                            gameData.enemyID = @"lv7B1";
                            [self initiateBattle];
                        }
                    }
                }
                //---/NPC AI--------------------------------------------------------------------------------------
                //---NPC GRID CODE--------------------------------------------------------------------------------
                int NPCmoveXY = 0;
                NPCmoveXY = 7 * gameData.NPCmoveY;
                NPCmoveXY = NPCmoveXY - 7;
                NPCmoveXY = NPCmoveXY +gameData.NPCmoveX;
                
                NSArray* grid = [gameData.NPCgridlayout componentsSeparatedByString: @" "];
                if (NPCmoveXY-1 < 0 || NPCmoveXY-1 > [grid count]-1) {
                    NPCnewtile = wall;
                } else {
                    NPCnewtile = [[grid objectAtIndex:NPCmoveXY-1] intValue];
                }
                
                //---/NPC GRID CODE------------------------------------------------------------------------------
                //----MOVE NPC SPRITE----------------------------------------------------------------------------
                if (NPCnewtile == empty) {
                    if (gameData.NPCaction == moveup)  gameData.NPCspriteY = gameData.NPCspriteY - 44;
                    if (gameData.NPCaction == movedown)  gameData.NPCspriteY = gameData.NPCspriteY + 44;
                    if (gameData.NPCaction == moveleft)  gameData.NPCspriteX = gameData.NPCspriteX - 44;
                    if (gameData.NPCaction == moveright)  gameData.NPCspriteX = gameData.NPCspriteX + 44;
                    gameData.NPCgridY = gameData.NPCmoveY;
                    gameData.NPCgridX = gameData.NPCmoveX;
                } else {
                    gameData.NPCmoveY = gameData.NPCgridY;
                    gameData.NPCmoveX = gameData.NPCgridX;
                }
                
                [UIView animateWithDuration:0.25 delay:0.25 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                    [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY];
                } completion:nil];
                
                if (gameData.NPCalive > 0) {
                    gameData.NPCnumber = 1;
                    if ([self intersection:playerImage with:npcSprite14]) {
                        gameData.blockrun = 1;
                        gameData.doppelgangerevent = 1;
                        [self initiateBattle];
                    }
                }
            }
            break;
        }
        case 150: {
            //if (gameData.NPCalive == 1) {
            int NPCnewtile = empty;
            //----NPC AI--------------------------------------------------------------------------------------
            //     The simple NPC AI:
            gameData.NPCaction = (rand()%4)+1;
            
            if (gameData.NPCaction == moveup) gameData.NPCmoveY = gameData.NPCgridY - 1;
            if (gameData.NPCaction == movedown) gameData.NPCmoveY = gameData.NPCgridY + 1;
            if (gameData.NPCaction == moveleft) gameData.NPCmoveX = gameData.NPCgridX - 1;
            if (gameData.NPCaction == moveright) gameData.NPCmoveX = gameData.NPCgridX + 1;
            if (gameData.NPCmoveY == 1)  NPCnewtile = wall;
            if (gameData.NPCmoveY == 7)  NPCnewtile = wall;
            if (gameData.NPCmoveX == 1)  NPCnewtile = wall;
            if (gameData.NPCmoveX == 7)  NPCnewtile = wall;
            //---/NPC AI--------------------------------------------------------------------------------------
            //---NPC GRID CODE--------------------------------------------------------------------------------
            int NPCmoveXY = 0;
            NPCmoveXY = 7 * gameData.NPCmoveY;
            NPCmoveXY = NPCmoveXY - 7;
            NPCmoveXY = NPCmoveXY +gameData.NPCmoveX;
            
            NSArray* grid = [gameData.gridlayout componentsSeparatedByString: @" "];
            if (NPCmoveXY-1 < 0 || NPCmoveXY-1 > [grid count]-1) {
                NPCnewtile = wall;
            } else {
                NPCnewtile = [[grid objectAtIndex:NPCmoveXY-1] intValue];
            }
            
            //---/NPC GRID CODE------------------------------------------------------------------------------
            //----MOVE NPC SPRITE----------------------------------------------------------------------------
            if (NPCnewtile == empty) {
                if (gameData.NPCaction == moveup)  gameData.NPCspriteY = gameData.NPCspriteY - 44;
                if (gameData.NPCaction == movedown)  gameData.NPCspriteY = gameData.NPCspriteY + 44;
                if (gameData.NPCaction == moveleft)  gameData.NPCspriteX = gameData.NPCspriteX - 44;
                if (gameData.NPCaction == moveright)  gameData.NPCspriteX = gameData.NPCspriteX + 44;
                gameData.NPCgridY = gameData.NPCmoveY;
                gameData.NPCgridX = gameData.NPCmoveX;
            } else {
                gameData.NPCmoveY = gameData.NPCgridY;
                gameData.NPCmoveX = gameData.NPCgridX;
            }
            
            [UIView animateWithDuration:0.25 delay:0.25 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY];
            } completion:nil];
            
            //}
            break;
        }
        case 205: {
            //if (gameData.NPCalive == 1) {
            int NPCnewtile = empty;
            //----NPC AI--------------------------------------------------------------------------------------
            //     The simple NPC AI:
            gameData.NPCaction = (rand()%4)+1;
            
            if (gameData.NPCaction == moveup) gameData.NPCmoveY = gameData.NPCgridY - 1;
            if (gameData.NPCaction == movedown) gameData.NPCmoveY = gameData.NPCgridY + 1;
            if (gameData.NPCaction == moveleft) gameData.NPCmoveX = gameData.NPCgridX - 1;
            if (gameData.NPCaction == moveright) gameData.NPCmoveX = gameData.NPCgridX + 1;
            if (gameData.NPCmoveY == 1)  NPCnewtile = wall;
            if (gameData.NPCmoveY == 7)  NPCnewtile = wall;
            if (gameData.NPCmoveX == 1)  NPCnewtile = wall;
            if (gameData.NPCmoveX == 7)  NPCnewtile = wall;
            //---/NPC AI--------------------------------------------------------------------------------------
            //---NPC GRID CODE--------------------------------------------------------------------------------
            int NPCmoveXY = 0;
            NPCmoveXY = 7 * gameData.NPCmoveY;
            NPCmoveXY = NPCmoveXY - 7;
            NPCmoveXY = NPCmoveXY +gameData.NPCmoveX;
            
            NSArray* grid = [gameData.gridlayout componentsSeparatedByString: @" "];
            if (NPCmoveXY-1 < 0 || NPCmoveXY-1 > [grid count]-1) {
                NPCnewtile = wall;
            } else {
                NPCnewtile = [[grid objectAtIndex:NPCmoveXY-1] intValue];
            }
            
            //---/NPC GRID CODE------------------------------------------------------------------------------
            //----MOVE NPC SPRITE----------------------------------------------------------------------------
            if (NPCnewtile == empty) {
                if (gameData.NPCaction == moveup)  gameData.NPCspriteY = gameData.NPCspriteY - 44;
                if (gameData.NPCaction == movedown)  gameData.NPCspriteY = gameData.NPCspriteY + 44;
                if (gameData.NPCaction == moveleft)  gameData.NPCspriteX = gameData.NPCspriteX - 44;
                if (gameData.NPCaction == moveright)  gameData.NPCspriteX = gameData.NPCspriteX + 44;
                gameData.NPCgridY = gameData.NPCmoveY;
                gameData.NPCgridX = gameData.NPCmoveX;
            } else {
                gameData.NPCmoveY = gameData.NPCgridY;
                gameData.NPCmoveX = gameData.NPCgridX;
            }
            
            [UIView animateWithDuration:0.25 delay:0.25 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY];
            } completion:nil];
            
            //}
            break;
        }
    }
    //For Attacking NPCS
    if (gameData.cardSpawnsNPCs) {
        if (gameData.NPCalive == 1) {
            int NPCnewtile = empty;
            //----NPC AI--------------------------------------------------------------------------------------
            //     The complex NPC AI:
            NSMutableArray* NPCpaths = [NSMutableArray array];
            if (gameData.gridX < gameData.NPCgridX) [NPCpaths addObject:[NSNumber numberWithInt:moveleft]];
            if (gameData.gridY < gameData.NPCgridY) [NPCpaths addObject:[NSNumber numberWithInt:moveup]];
            if (gameData.gridX > gameData.NPCgridX) [NPCpaths addObject:[NSNumber numberWithInt:moveright]];
            if (gameData.gridY > gameData.NPCgridY) [NPCpaths addObject:[NSNumber numberWithInt:movedown]];
            int NPCaction;
            if ([NPCpaths count] > 0) {
                NPCaction = [[NPCpaths objectAtIndex:rand()%[NPCpaths count]] intValue];
            } else {
                NPCaction = 0;
            }
            if (NPCaction == moveup) gameData.NPCmoveY = gameData.NPCgridY - 1;
            if (NPCaction == movedown) gameData.NPCmoveY = gameData.NPCgridY + 1;
            if (NPCaction == moveleft) gameData.NPCmoveX = gameData.NPCgridX - 1;
            if (NPCaction == moveright) gameData.NPCmoveX = gameData.NPCgridX + 1;
            if (gameData.NPCmoveY == 0) NPCnewtile = wall;
            if (gameData.NPCmoveY == 8) NPCnewtile = wall;
            if (gameData.NPCmoveX == 0) NPCnewtile = wall;
            if (gameData.NPCmoveX == 8) NPCnewtile = wall;
            //---/NPC AI--------------------------------------------------------------------------------------
            //---NPC GRID CODE--------------------------------------------------------------------------------
            int NPCmoveXY = 0;
            NPCmoveXY = 7 * gameData.NPCmoveY;
            NPCmoveXY = NPCmoveXY - 7;
            NPCmoveXY = NPCmoveXY +gameData.NPCmoveX;
            
            NSArray* grid = [gameData.gridlayout componentsSeparatedByString: @" "];
            if (NPCmoveXY-1 < 0 || NPCmoveXY-1 > [grid count]-1) {
                NPCnewtile = wall;
            } else {
                NPCnewtile = [[grid objectAtIndex:NPCmoveXY-1] intValue];
            }
            //---/NPC GRID CODE------------------------------------------------------------------------------
            //----MOVE NPC SPRITE----------------------------------------------------------------------------
            if (NPCnewtile == empty) {
                if (NPCaction == moveup) gameData.NPCspriteY = gameData.NPCspriteY - 44;
                if (NPCaction == movedown) gameData.NPCspriteY = gameData.NPCspriteY + 44;
                if (NPCaction == moveleft) gameData.NPCspriteX = gameData.NPCspriteX - 44;
                if (NPCaction == moveright) gameData.NPCspriteX = gameData.NPCspriteX + 44;
                gameData.NPCgridY = gameData.NPCmoveY;
                gameData.NPCgridX = gameData.NPCmoveX;
            } else {
                gameData.NPCmoveY = gameData.NPCgridY;
                gameData.NPCmoveX = gameData.NPCgridX;
            }
            [UIView animateWithDuration:0.25 delay:0.25 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                [self updateSprite:npcSprite14 x:gameData.NPCspriteX y:gameData.NPCspriteY];
            } completion:nil];
        }
        //---/MOVE NPC SPRITE----------------------------------------------------------------------------
        //----NPC SPAWN---------------------------------------------------------------------------------
        if (gameData.NPCalive == FALSE) {
            [self spawnNPC:1];
        }
        //---/NPC SPAWN---------------------------------------------------------------------------------
        if (gameData.NPCalive > 0 && !enteringBattle) {
            gameData.NPCnumber = 1;
            if ([self intersection:npcSprite14 with:playerImage]) {
                gameData.enemyID = @"";
                [self initiateBattle];
            }
        }
        
        
        if (gameData.NPC2alive == 1) {
            int NPCnewtile = empty;
            //----NPC AI--------------------------------------------------------------------------------------
            //     The complex NPC AI:
            NSMutableArray* NPCpaths = [NSMutableArray array];
            if (gameData.gridX < gameData.NPC2gridX) [NPCpaths addObject:[NSNumber numberWithInt:moveleft]];
            if (gameData.gridY < gameData.NPC2gridY) [NPCpaths addObject:[NSNumber numberWithInt:moveup]];
            if (gameData.gridX > gameData.NPC2gridX) [NPCpaths addObject:[NSNumber numberWithInt:moveright]];
            if (gameData.gridY > gameData.NPC2gridY) [NPCpaths addObject:[NSNumber numberWithInt:movedown]];
            int NPCaction;
            if ([NPCpaths count] > 0) {
                NPCaction = [[NPCpaths objectAtIndex:rand()%[NPCpaths count]] intValue];
            } else {
                NPCaction = 0;
            }
            if (NPCaction == moveup) gameData.NPC2moveY = gameData.NPC2gridY - 1;
            if (NPCaction == movedown) gameData.NPC2moveY = gameData.NPC2gridY + 1;
            if (NPCaction == moveleft) gameData.NPC2moveX = gameData.NPC2gridX - 1;
            if (NPCaction == moveright) gameData.NPC2moveX = gameData.NPC2gridX + 1;
            if (gameData.NPC2moveY == 0) NPCnewtile = wall;
            if (gameData.NPC2moveY == 8) NPCnewtile = wall;
            if (gameData.NPC2moveX == 0) NPCnewtile = wall;
            if (gameData.NPC2moveX == 8) NPCnewtile = wall;
            //---/NPC AI--------------------------------------------------------------------------------------
            //---NPC GRID CODE--------------------------------------------------------------------------------
            int NPCmoveXY = 0;
            NPCmoveXY = 7 * gameData.NPC2moveY;
            NPCmoveXY = NPCmoveXY - 7;
            NPCmoveXY = NPCmoveXY +gameData.NPC2moveX;
            
            NSArray* grid = [gameData.gridlayout componentsSeparatedByString: @" "];
            if (NPCmoveXY-1 < 0 || NPCmoveXY-1 > [grid count]-1) {
                NPCnewtile = wall;
            } else {
                NPCnewtile = [[grid objectAtIndex:NPCmoveXY-1] intValue];
            }
            //---/NPC GRID CODE------------------------------------------------------------------------------
            //----MOVE NPC SPRITE----------------------------------------------------------------------------
            if (NPCnewtile == empty) {
                if (NPCaction == moveup) gameData.NPC2spriteY = gameData.NPC2spriteY - 44;
                if (NPCaction == movedown) gameData.NPC2spriteY = gameData.NPC2spriteY + 44;
                if (NPCaction == moveleft) gameData.NPC2spriteX = gameData.NPC2spriteX - 44;
                if (NPCaction == moveright) gameData.NPC2spriteX = gameData.NPC2spriteX + 44;
                gameData.NPC2gridY = gameData.NPC2moveY;
                gameData.NPC2gridX = gameData.NPC2moveX;
            } else {
                gameData.NPC2moveY = gameData.NPC2gridY;
                gameData.NPC2moveX = gameData.NPC2gridX;
            }
            [UIView animateWithDuration:0.25 delay:0.25 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                [self updateSprite:npcSprite13 x:gameData.NPC2spriteX y:gameData.NPC2spriteY];
            } completion:nil];
        }
        //---/MOVE NPC2 SPRITE----------------------------------------------------------------------------
        //----NPC2 SPAWN---------------------------------------------------------------------------------
        if (gameData.NPC2alive == FALSE) {
            [self spawnNPC:2];
        }
        //---/NPC SPAWN---------------------------------------------------------------------------------
        if (gameData.NPC2alive > 0 && !enteringBattle) {
            gameData.NPCnumber = 2;
            if ([self intersection:npcSprite13 with:playerImage]) {
                gameData.enemyID = @"";
                [self initiateBattle];
            }
        }
        
        
        //----NPC SPEECH---------------------------------------------------------------------------------
        if (gameData.NPCalive == 1) {
            int NPCspeakchance = (rand()%20)+1;
            if (NPCspeakchance == 1) {
                //CLEAR TEXT
                //PRINT [self getEnemySpeech:gameData.NPCsprite];
            }
        }
        //---/NPC SPEECH---------------------------------------------------------------------------------
        //----NPC2 SPEECH--------------------------------------------------------------------------------
        if (gameData.NPC2alive == 1) {
            int NPC2speakchance = (rand()%20)+1;
            if (NPC2speakchance == 1) {
                //CLEAR TEXT
                //PRINT [self getEnemySpeech:gameData.NPC2sprite];
            }
        }
        //---/NPC2 SPEECH--------------------------------------------------------------------------------
    }
}

- (IBAction)examine {
    if (gameData.card != 155) {
        if (gameData.card < 113) {
            switch (gameData.card) {
                case 20: {
                    int examine = 0;
                    
                    BOOL TC1collide = [self intersection:treasureChest5 with:playerImage];
                    if (TC1collide == 1) examine = -1;
                    
                    if (gameData.gridY == 3) {
                        if (gameData.gridX == 5) examine = 1;
                    }
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv0TC1 == 0) {
                            gameData.lv0TC1 = 1;
                            gameData.chestitemNum = (rand()%5)+1;
                            if (gameData.chestitemNum == 1) gameData.chestitem = @"Necklace of Luck";
                            if (gameData.chestitemNum == 2) gameData.chestitem = @"Ring of Lesser Healing";
                            if (gameData.chestitemNum == 3) gameData.chestitem = @"Amulet of Protection";
                            if (gameData.chestitemNum == 4) gameData.chestitem = @"Gauntlets of Rage";
                            if (gameData.chestitemNum == 5) gameData.chestitem = @"Bracer of Vampirism";
                            if (gameData.chestitemNum == 6) gameData.chestitem = @"Cloak of Distraction";
                            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"The chest contains a %@. Would you like to replace it with your current trinket: %@?",gameData.chestitem,gameData.playertrinket] message:nil delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
                            [alert show];
                            [alert release];
                            [arrowPad disable];
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                        }else{
                            examine = 0;
                        }
                    }
                    
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    if (examine == 1) {
                        [self print:@"Signpost" message:@"Welcome to Lanburgh."];
                    }
                    break;
                }
                case 21: {
                    int examine = 0;
                    
                    if (gameData.gridY == 2) {
                        if (gameData.gridX == 3) examine = 1;
                    }
                    
                    if( gameData.gridY == 4) {
                        if (gameData.gridX == 3) examine = 2;
                    }
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    if (examine == 1) {
                        if (gameData.brigandevent == 0) {
                            [self print:@"Human Sentry" message:@"We've been stationed to guard the road into Lanburgh, but to be honest I doubt there's anything we could do if those creatures from the Underdark attacked again.\nWe might be able to handle a few Goblins, but certianly not Orcs or Bugbears!"];
                        } else {
                            [self print:@"Human Sentry" message:@"I feel stronger having played my part in protecting the town from that band of brigands. Why, I'm starting to think that those Underdark creatures might not be so tough after all..."];
                        }
                    }
                    
                    if (examine == 2) {
                        if (gameData.brigandevent == 0) {
                            [self print:@"Human Sentry" message:@"Being a town guard used to be an easy job, as there weren't many monsters to ward away. Now though... well, it's a life threatening task! I feel proud knowing that people can sleep easier at night thanks to the work I do."];
                        } else {
                            [self print:@"Human Sentry" message:[NSString stringWithFormat:@"Thank you %@! We couldn't have prevented the brigand assault without your help. You arrived in the nick of time and saved the town!",gameData.playername]];
                        }
                    }
                    break;
                }
                case 28: {
                    int examine = 0;
                    
                    if (gameData.gridY == 4) {
                        if (gameData.gridX == 5) examine = 1;
                    }
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    if (examine == 1) {
                        [self print:@"Signpost" message:@"Welcome to Stone Basin. Stronghold of the Dwarves."];
                    }
                    break;
                }
                case 29: {
                    int examine = 0;
                    
                    if (gameData.gridY == 3) {
                        if (gameData.gridX == 4) examine = 1;
                    }
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        [self print:@"Dwarf Sentry" message:@"Only Dwarves can pass beyond this point."];
                    }
                    break;
                }
                case 30: {
                    int examine = 0;
                    
                    if (gameData.gridY == 6) {
                        if (gameData.gridX == 3) examine = 1;
                    }
                    if (gameData.gridY == 6) {
                        if (gameData.gridX == 5) examine = 2;
                    }
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        [self print:@"Dwarf Sentry" message:@"I'd like to see those Drow TRY to invade us! Our fortress has withstood every attack made upon it, and no Elf race could ever break through its defences."];
                    }
                    if (examine == 2) {
                        [self print:@"Dwarf Sentry" message:@"It's no wonder the Elves lost their refuge to the Goblins, their houses are built with twigs and leaves! If you ask me, they could learn a thing or two about building  houses from the Dwarves."];
                    }
                    break;
                }
                case 31: {
                    int examine = 0;
                    
                    if (gameData.NPCalive > 0) {
                        int NPCcollide = [self intersection:npcSprite14 with:playerImage];
                        if (NPCcollide == 1) examine = 1;
                    }
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        [self print:@"Dwarf Blacksmith" message:@"The deep mines are closed off, so now I can't visit the Great Forge. I hope this Underdark business is over soon, it's causing trouble for everyone..."];
                    }
                    break;
                }
                case 33: {
                    int examine = 0;
                    if (gameData.gridX == 4 && gameData.gridY == 4) {examine = 1;}
                    
                    if (examine == 0) {
  
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        [self print:@"There's something peculiar about this tree." message:nil];
                    }
                    break;
                }
                case 35: {
                    int examine = 0;
                    
                    if (gameData.gridY == 4) {
                        if (gameData.gridX == 6) examine = 1;
                    }
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        [self print:@"You detect a magical aura shrouding the bridge." message:nil];
                    }
                    break;
                }
                case 36: {
                    int examine = 0;
                    
                    if (gameData.gridY == 4) {
                        if (gameData.gridX == 2) examine = 1;
                    }
                    if (gameData.gridY == 5) {
                        if (gameData.gridX == 5) examine = 2;
                    }
                    
                    if (gameData.NPCalive > 0) {
                        int NPCcollide = [self intersection:npcSprite14 with:playerImage];
                        if (NPCcollide == 1) examine = 3;
                    }
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        [self print:@"This signpost formally read \"Welcome to Illithéin\", but now it's too damaged to read." message:nil];
                    }
                    if (examine == 2) {
                        [self print:@"Elf Villager" message:@"A ward of protection has been cast on the bridge east of Illithéin. There won't be another attack on us anytime soon."];
                    }
                    if (examine == 3) {
                        [self print:@"Elf Villager" message:@"We were completly taken by surprise when the attack came. No one could venture a guess as to where the creatures came from, and the last place anyone would have guessed is the Underdark!\n*shivers*\nJust thinking about that place gives me the creeps..."];
                    }
                    break;
                }
                case 37: {
                    int examine = 0;
                    
                    if (gameData.gridY == 4) {
                        if (gameData.gridX == 6) examine = 1;
                    }
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        [self print:@"Elf Villager" message:@"With all of our traders dead we'll have to buy supplies from the Humans. Thank Ausa we didn't turn them away when they landed their boats eight years ago. Had we done so they wouldn't be able to help us now in our time of need.\nWe'd be done for now if our jealousy over land had got the better of us back then."];
                    }
                    break;
                }
                case 38: {
                    int examine = 0;
                    
                    if (gameData.gridY == 3) {
                        if (gameData.gridX == 4) examine = 1;
                    }
                    if (gameData.gridY == 6) {
                        if (gameData.gridX == 5) examine = 2;
                    }
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        [self print:@"Elf Villager" message:@"Ausa's shrine will be the first thing we rebuild. I'm already working on clearing the rubble off the site."];
                    }
                    if (examine == 2) {
                        [self print:@"This signpost formally read \"Shrine to Ausa\", but now it's too damaged to read." message:nil];
                    }
                    break;
                }
                case 39: {
                    int examine = 0;
                    
                    if (gameData.NPCalive > 0) {
                        int NPCcollide = [self intersection:npcSprite14 with:playerImage];
                        if (NPCcollide == 1) examine = 1;
                    }
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        [self goToWeaponShop];
                    }
                    break;
                }
                case 40: {
                    int examine = 0;
                    
                    if (gameData.NPCalive > 0) {
                        int NPCcollide = [self intersection:npcSprite14 with:playerImage];
                        if (NPCcollide == 1) examine = 1;
                    }
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        [self print:@"Human Villager" message:@"I hope those creatures from the underdark don't attack us next. If they were able to overcome the powerful magic of the Elves, what chance would we have of fending them off?"];
                    }
                    break;
                }
                case 41: {
                    int examine = 0;
                    
                    if (gameData.gridY == 4) {
                        if (gameData.gridX == 3) examine = 1;
                    }
                    
                    if (gameData.NPCalive > 0) {
                        int NPCcollide = [self intersection:npcSprite14 with:playerImage];
                        if (NPCcollide == 1) examine = 2;
                    }
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        [self goToArmorShop];
                    }
                    if (examine == 2) {
                        [self print:@"Human Villager" message:@"Lanburgh is just a tiny colony in one of the far corners of the great Human empire. Me and my husband moved here a few years ago to get away from all the noise of the mainland. We never imagined that there'd be Dwarves and Elves on the new continent though!"];
                    }
                    break;
                }
                case 42: {
                    int examine = 0;
                    
                    if (gameData.gridY == 4) {
                        if (gameData.gridX == 4) examine = 1;
                    }
                    
                    if ([self intersection:npcSprite10 with:playerImage] == 1) examine = 2;
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        [gameData playSoundEffect:@"Teleport"];
                        gameData.playerHP = gameData.maxHP;
                        [self print:@"Human Cleric" message:@"Your wounds are healed. Come to me whenever you need to replenish your HP or save your progress."];
                        [self saveGame];
                        [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
                    }
                    if (examine == 2) {
                        if (gameData.rareitembuyerstate == 1) {
                            [self print: @"Gnome Traveller" message:@"I'll be on my way soon. I don't like hanging around the same place for too long."];
                        }
                        
                        if (gameData.rareitembuyerstate == 0) {
                            if ([gameData.playertrinket isEqualToString:@"None"]) {
                                [self print: @"Gnome Traveller" message:@"Greetings! I'm a collector of rare items. Hmm... you don't have anything that interests me."];
                            } else {
                                
                                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Gnome Traveller" message:[NSString stringWithFormat:@"Greetings! I'm a collector of rare items. Would you care to trade your %@ for my %@",gameData.playertrinket,gameData.rareitembuyeritem] delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
                                [alert show];
                                [alert release];
                                [arrowPad disable];
                            }
                        }
                    }
                    break;
                }
                case 49: {
                    break;
                }
                case 51: {
                    int examine = 0;
                    
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv1TC1 == 0) {
                            gameData.lv1TC1 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 6;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;
                            gameData.KEYrusty = 1;
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!\nYou found a Rusty Key!",TCgold]];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    break;
                }
                case 52: {
                    int examine = 0;
                    
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv1TC2 == 0) {
                            gameData.lv1TC2 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 6;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;
                            
                            gameData.ITEMhealingpotions = gameData.ITEMhealingpotions + 1;
                            if (gameData.ITEMhealingpotions > 10) gameData.ITEMhealingpotions = 10;
                            
                            if (gameData.ITEMhealingpotions == 10) { 
                                [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!\nYou found a Potion!\nYou can't carry anymore Potions.",TCgold]];
                            } else {
                                [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!\nYou found a Potion!",TCgold]];
                            }
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    break;
                }
                case 55: {
                    int examine = 0;
                    
                    if (gameData.gridY == 2) {
                        if (gameData.gridX == 3) examine = 1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    if (examine == 1) {
                        if (gameData.artifact == 0) {
                            if (gameData.teleporter == 0) {
                                if ([gameData.playerrace isEqualToString: @"Human"]) {
                                    [self print:@"You're standing on an elaborate tile mosaic. What could its purpose be?" message:nil];
                                }
                                if ([gameData.playerrace isEqualToString: @"Elf"]) {
                                    [self print:@"You sense a faint magical aura radiating from these mosaic tiles. Whatever powers are at work here, they seem inactive." message:nil];
                                }
                                if ([gameData.playerrace isEqualToString: @"Dwarf"]) {
                                    [self print:@"Mosaic Tile" message:@"Being of a race with more knowledge of masonry and architecture than any other, it's clear to you that the mosaic tiles you stand on are of Dwarven craft.\nYou've often heard whispered fables of your cruel sun loathing cousins the Duergar. You shudder at the thought that the Grey Dwarves may be more real than you imagined..."];
                                }
                                if ([gameData.playerrace isEqualToString: @"Gnome"]) {
                                    [self print:@"The elaborate mosaic tiles beneath your feet have a similar architecture to that of the Dwarves. But why would the Dwarves build anything in the Underdark?" message:nil];
                                }
                            } else {
                                [self teleport];
                            }
                        } else {
                            [self print:@"The artifact's power is interfering with the magic of the teleporter..." message:nil];
                        }
                    }
                    
                    break;
                }
                case 61: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv2TC1 == 0) {
                            gameData.lv2TC1 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%5)+1;
                            TCgold += 13;
                            gameData.gold += TCgold;
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 63: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv2TC2 == 0) {
                            gameData.lv2TC2 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%5)+1;
                            TCgold += 6;
                            gameData.gold += TCgold;
                            NSString* message = [NSString stringWithFormat:@"+ %d gold!\nYou found a Potion!",TCgold];
                            if (gameData.ITEMhealingpotions == 10) {
                                message = [NSString stringWithFormat:@"%@\nYou can't carry any more potions.",message];
                            } else {
                                gameData.ITEMhealingpotions = gameData.ITEMhealingpotions + 1;
                            }
                            [self print:@"You found a treasure chest!" message:message];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 65: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv2TC3 == 0) {
                            gameData.lv2TC3 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%5)+1;
                            TCgold += 13;
                            gameData.gold += TCgold;
                            
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 68: {
                    int examine = 0;
                    
                    if (gameData.gridY == 6) {
                        if (gameData.gridX == 2) examine = 1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    if (examine == 1) {
                        if (gameData.artifact == 0) {
                            gameData.teleporter = 2;
                            [self teleport];
                        } else {
                            [self print:@"The artifact's power is interfering with the magic of the teleporter..." message:nil];
                        }
                    }
                    
                    break;
                }
                case 70: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv2TC5 == 0) {
                            gameData.lv2TC5 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%5)+1;
                            TCgold = TCgold + 6;
                            gameData.gold = gameData.gold + TCgold;
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 71: {
                    int examine = 0;
                    
                    if ([self intersection:npcSprite14 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv2TC4 == 0) {
                            gameData.lv2TC4 = 1;
                            [npcSprite14 removeFromSuperview];
                            [npcSprite14 release];
                            npcSprite14 = nil;
                            gameData.TCpuzzlecomplete = 2;
                            gameData.NPCalive = 0;
                            gameData.KEYiron = 1;
                            [self print:@"You found an Iron Key!" message:nil];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 75: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest4 with:playerImage]) {
                        examine = -2;
                    }
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -2) {
                        if (gameData.lv3M2 == 0) {
                            gameData.battlereturn = gameData.card;
                            gameData.NPCalive = 0;
                            gameData.NPC2alive = 0;
                            gameData.NPCnumber = 1;
                            gameData.NPCsprite = @"Mimic.gif";
                            gameData.enemyID = @"lv3M2";
                            [self initiateBattle];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == -1) {
                        if (gameData.lv3TC3 == 0) {
                            gameData.lv3TC3 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 19;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 78: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest4 with:playerImage]) {
                        examine = -2;
                    }
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -2) {
                        if (gameData.lv3M1 == 0) {
                            gameData.battlereturn = gameData.card;
                            gameData.NPCalive = 0;
                            gameData.NPC2alive = 0;
                            gameData.NPCnumber = 1;
                            gameData.NPCsprite = @"Mimic.gif";
                            gameData.enemyID = @"lv3M1";
                            [self initiateBattle];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == -1) {
                        if (gameData.lv3TC2 == 0) {
                            gameData.lv3TC2 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 10;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 82: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv3TC1 == 0) {
                            gameData.lv3TC1 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 11;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 83: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv3TC4 == 0) {
                            gameData.lv3TC4 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 10;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 84: {
                    int examine = 0;
                    
                    if (gameData.gridY == 5) {
                        if (gameData.gridX == 3) examine = 1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        if (gameData.artifact == 0) {
                            gameData.teleporter = 3;
                            [self teleport];
                        } else {
                            [self print:@"The artifact's power is interfering with the magic of the teleporter..." message:nil];
                        }
                    }
                    
                    break;
                }
                case 85: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv3TC5 == 0) {
                            gameData.lv3TC5 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            TCgold += 17;
                            gameData.gold += TCgold;
                            NSString* message = [NSString stringWithFormat:@"+ %d gold!\nYou found a Potion!",TCgold];
                            if (gameData.ITEMhealingpotions == 10) {
                                message = [NSString stringWithFormat:@"%@\nYou can't carry any more potions.",message];
                            } else {
                                gameData.ITEMhealingpotions = gameData.ITEMhealingpotions + 1;
                            }
                            [self print:@"You found a treasure chest!" message:message];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 86: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv3TC6 == 0) {
                            gameData.lv3TC6 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 10;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 91: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    if ([self intersection:treasureChest6 with:playerImage]) {
                        examine = -2;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv4TC1 == 0) {
                            gameData.lv4TC1 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 16;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == -2) {
                        if (gameData.lv4TC2 == 0) {
                            gameData.lv4TC2 = 1;
                            [treasureChest6 removeFromSuperview];
                            [treasureChest6 release];
                            treasureChest6 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 16;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 93: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv4TC3 == 0) {
                            gameData.lv4TC3 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 25;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 95: {
                    int examine = 0;
                    
                    if (gameData.gridY == 3) {
                        if (gameData.gridX == 4) examine = 1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == 1) {
                        if (gameData.artifact == 0) {
                            gameData.teleporter = 4;
                            [self teleport];
                        } else {
                            [self print:@"The artifact's power is interfering with the magic of the teleporter..." message:nil];
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 96: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv4TC4 == 0) {
                            gameData.lv4TC4 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 25;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;                    
                            gameData.ITEMhealingpotions = gameData.ITEMhealingpotions + 1;
                            if (gameData.ITEMhealingpotions > 10) gameData.ITEMhealingpotions = 10;
                            if (gameData.ITEMhealingpotions == 10) {
                                [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold! You found a Potion! You can't carry anymore Potions.",TCgold]];
                            } else {
                                [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold! You found a Potion!",TCgold]];
                            }
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 97: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv4TC5 == 0) {
                            gameData.lv4TC5 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 18;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;
                            gameData.KEYbronze = 1;
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold! You found a Bronze Key!",TCgold]];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 99: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest4 with:playerImage]) {
                        examine = -2;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -2) {
                        if (gameData.lv4M1 == 0) {
                            gameData.lv4M1 = 1;
                            [treasureChest4 removeFromSuperview];
                            [treasureChest4 release];
                            treasureChest4 = nil;
                            gameData.battlereturn = gameData.card;
                            gameData.NPCalive = 0;
                            gameData.NPC2alive = 0;
                            gameData.NPCnumber = 1;
                            gameData.NPCsprite = @"Mimic.gif";
                            gameData.enemyID = @"lv4M1";
                            [self initiateBattle];
                        }else {examine=0;}
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 102: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv4TC6 == 0) {
                            gameData.lv4TC6 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 18;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 103: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest4 with:playerImage]) {
                        examine = -2;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -2) {
                        if (gameData.lv4M2 == 0) {
                            gameData.lv4M2 = 1;
                            [treasureChest4 removeFromSuperview];
                            [treasureChest4 release];
                            treasureChest4 = nil;
                            gameData.battlereturn = gameData.card;
                            gameData.NPCalive = 0;
                            gameData.NPC2alive = 0;
                            gameData.NPCnumber = 1;
                            gameData.NPCsprite = @"Mimic.gif";
                            gameData.enemyID = @"lv4M2";
                            [self initiateBattle];
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 111: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv5TC1 == 0) {
                            gameData.lv5TC1 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 35;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold; 
                            gameData.KEYgold = 1;
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold! You found a Gold Key!",TCgold]];
                        } else {examine=0;}
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 112: {
                    int examine = 0;
                    
                    if (gameData.gridY == 2) {
                        if (gameData.gridX == 2) examine = 1;
                    }
                    
                    if (gameData.gridY == 5) {
                        if (gameData.gridX == 6) examine = 2;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine > 0) {
                        
                        if (gameData.slidewallposition == 0) gameData.slidewallX = gameData.slidewallX - 44;
                        if (gameData.slidewallposition == 1) gameData.slidewallX = gameData.slidewallX + 44;
                        [UIView animateWithDuration:0.5 animations:^(void){
                            [self updateSprite:slideWall3 x:gameData.slidewallX y:gameData.slidewallY];
                        } completion:^(BOOL finished){
                            gameData.slidewallposition = !gameData.slidewallposition;
                            gameData.gridlayout = @"1 1 0 1 3 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1";
                            if (gameData.slidewallposition == 1) gameData.gridlayout = @"1 1 0 1 3 1 1 1 0 0 1 0 1 1 1 1 0 1 0 0 0 0 0 1 1 0 1 1 1 1 1 1 0 0 1 1 0 0 0 0 1 1 1 0 1 1 1 1 1"; 
                            [self print:@"When you press your weight on these stones, the nearby wall moves!" message:nil];
                        }];
                        
                    }
                    break;
                }
                    
            }
        } else {
            switch (gameData.card) {
                case 114: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv5TC2 == 0) {
                            gameData.lv5TC2 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 27;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold; 
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {examine=0;}
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 115: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv5TC3 == 0) {
                            gameData.lv5TC3 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 27;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold; 
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {examine=0;}
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 116: {
                    int examine = 0;
                    
                    if (gameData.gridY == 6) {
                        if (gameData.gridX == 4) examine = 1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        if (gameData.artifact == 0) {
                            gameData.teleporter = 5;
                            [self teleport];
                        } else {
                            [self print:@"The artifact's power is interfering with the magic of the teleporter..." message:nil];
                        }
                    }
                    
                    break;
                }
                case 117: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv5TC4 == 0) {
                            gameData.lv5TC4 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 27;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;                    
                            gameData.ITEMhealingpotions = gameData.ITEMhealingpotions + 1;
                            if (gameData.ITEMhealingpotions > 10) gameData.ITEMhealingpotions = 10;
                            if (gameData.ITEMhealingpotions == 10) {
                                [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold! You found a Potion! You can't carry anymore Potions.",TCgold]];
                            } else {
                                [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold! You found a Potion!",TCgold]];
                            }
                        } else {
                            examine = 0;
                        }
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 121: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    if ([self intersection:treasureChest4 with:playerImage]) {
                        examine = -2;
                    }
                    
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -2) {
                        if (gameData.lv5M1 == 0) {
                            gameData.battlereturn = gameData.card;
                            gameData.NPCalive = 0;
                            gameData.NPC2alive = 0;
                            gameData.NPCnumber = 1;
                            gameData.NPCsprite = @"Mimic.gif";
                            gameData.enemyID = @"lv5M1";
                            [self initiateBattle];
                        } else {
                            examine = 0;
                        }
                    }
                    
                    if (examine == -1) {
                        if (gameData.lv5TC5 == 0) {
                            gameData.lv5TC5 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 35;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold; 
                            gameData.KEYsilver = 1;
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold! You found a Silver Key!",TCgold]];
                        } else {examine=0;}
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 125: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv6TC1 == 0) {
                            gameData.lv6TC1 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 50;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold; 
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {examine=0;}
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 126: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv6TC2 == 0) {
                            gameData.lv6TC2 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 40;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold; 
                            gameData.KEYplatinum = 1;
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold! You found a Platinum Key!",TCgold]];
                        } else {examine=0;}
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 130: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv6TC3 == 0) {
                            gameData.lv6TC3 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 50;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;
                            gameData.ITEMhealingpotions += 1;
                            NSString* message = [NSString stringWithFormat:@"+ %d gold! You found a Potion!",TCgold];
                            if (gameData.ITEMhealingpotions > 10) {
                                gameData.ITEMhealingpotions = 10;
                                message = [NSString stringWithFormat:@"+ %d gold! You found a Potion! You can't carry any more potions.",TCgold];
                            }
                            [self print:@"You found a treasure chest!" message:message];
                        } else {examine=0;}
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 135: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv6TC4 == 0) {
                            gameData.lv6TC4 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 50;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;
                            NSString* message = [NSString stringWithFormat:@"+ %d gold!",TCgold];
                            [self print:@"You found a treasure chest!" message:message];
                        } else {examine=0;}
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 137: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv6TC5 == 0) {
                            gameData.lv6TC5 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 50;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;
                            NSString* message = [NSString stringWithFormat:@"+ %d gold!",TCgold];
                            [self print:@"You found a treasure chest!" message:message];
                        } else {examine=0;}
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 138: {
                    int examine = 0;
                    
                    if (gameData.gridY == 5) {
                        if (gameData.gridX == 6) examine = 1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        if (gameData.artifact == 0) {
                            gameData.teleporter = 6;
                            [self teleport];
                        }else{
                            [self print:@"The artifact's power is interfering with the magic of the teleporter..." message:nil];
                        }
                    }
                    
                    break;
                }
                case 145: {
                    int examine = 0;
                    
                    if (gameData.gridY == 3) {
                        if (gameData.gridX == 6) examine = 1;
                    }
                    //'------------------------------------------------------------------------------------------------
                    
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    if (examine == 1) {
                        if (gameData.artifact == 0) {
                            gameData.teleporter = 7;
                            [self teleport];
                        }else{
                            [self print:@"The artifact's power is interfering with the magic of the teleporter..." message:nil];
                        }
                    }
                    break;
                }
                case 149: {
                    int examine = 0;
                    
                    if ([self intersection:tileSprite2 with:playerImage]) examine = -2;
                    if ([self intersection:tileSprite3 with:playerImage]) examine = -3;
                    if ([self intersection:tileSprite4 with:playerImage]) examine = -4;
                    if ([self intersection:tileSprite5 with:playerImage]) examine = -5;
                    if ([self intersection:treasureChest6 with:playerImage]) examine = -6;
                    
                    if (gameData.gridY == 4) {
                        if (gameData.gridX == 4) examine = 1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -2) {
                        if (gameData.lv7TC2 == 0) {
                            gameData.lv7TC2 = 1;
                            [tileSprite2 removeFromSuperview];
                            [tileSprite2 release];
                            tileSprite2 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 64;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold; 
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {examine=0;}
                    }
                    if (examine == -3) {
                        if (gameData.lv7TC3 == 0) {
                            gameData.lv7TC3 = 1;
                            [tileSprite3 removeFromSuperview];
                            [tileSprite3 release];
                            tileSprite3 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 64;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold; 
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {examine=0;}
                    }
                    if (examine == -4) {
                        if (gameData.lv7TC4 == 0) {
                            gameData.lv7TC4 = 1;
                            [tileSprite4 removeFromSuperview];
                            [tileSprite4 release];
                            tileSprite4 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 64;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold; 
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {examine=0;}
                    }
                    if (examine == -5) {
                        if (gameData.lv7TC5 == 0) {
                            gameData.lv7TC5 = 1;
                            [tileSprite5 removeFromSuperview];
                            [tileSprite5 release];
                            tileSprite5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 64;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold; 
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {examine=0;}
                    }
                    if (examine == -6) {
                        if (gameData.lv7TC6 == 0) {
                            gameData.lv7TC6 = 1;
                            [treasureChest6 removeFromSuperview];
                            [treasureChest6 release];
                            treasureChest6 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 64;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold; 
                            [self print:@"You found a treasure chest!" message:[NSString stringWithFormat:@"+ %d gold!",TCgold]];
                        } else {examine=0;}
                    }
                    if (examine == 1) {
                        if (gameData.artifact == 0) {
                            gameData.artifact = 1;
                            [tileSprite1 removeFromSuperview];
                            [tileSprite1 release];
                            tileSprite1 = nil;
                            [self print:@"Power radiates from this magnificent sword. It must be the Elven artifact!" message:@"You should hurry back to the surface and return it to the Elves!"];
                        }else{
                            examine = 0;
                        }
                    }
                    
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    
                    break;
                }
                case 150: {
                    int examine = 0;
                    
                    if ([self intersection:treasureChest5 with:playerImage]) {
                        examine = -1;
                    }
                    if ([self intersection:npcSprite14 with:playerImage]) {
                        examine = 1;
                    }
                    
                    //------------------------------------------------------------------------------------------------
                    if (examine == -1) {
                        if (gameData.lv7TC1 == 0) {
                            gameData.lv7TC1 = 1;
                            [treasureChest5 removeFromSuperview];
                            [treasureChest5 release];
                            treasureChest5 = nil;
                            int TCgold = (rand()%3)+1;
                            int TCgoldplus = 37;
                            TCgold = TCgold + TCgoldplus;
                            gameData.gold = gameData.gold + TCgold;
                            NSString* message = [NSString stringWithFormat:@"+ %d gold!",TCgold];
                            [self print:@"You found a treasure chest!" message:message];
                        } else {examine=0;}
                    }
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        GameShop *controller = [[GameShop alloc] initWithNibName:@"GameShop" bundle:nil];
                        [controller loadSpecialShop];
                        [[self navigationController] pushViewController:controller animated:YES];
                    }
                    break;
                }
                case 204: {
                    int examine = 0;
                    
                    if (gameData.gridY == 5) {
                        if (gameData.gridX == 4) examine = 1;
                    }
                    if (gameData.gridY == 6) {
                        if (gameData.gridX == 4) examine = 2;
                    }
                    //'------------------------------------------------------------------------------------------------
                    
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        [self print:@"Signpost" message:@"Castle Star Reach. Roguesoft Headquarters."];
                    }
                    if (examine == 2) {
                        gameData.teleporter = -2;
                        [self teleport];
                    }
                    break;
                }

                case 205: {
                    int examine = 0;
                    
                    if (gameData.gridY == 3) {
                        if (gameData.gridX == 2) examine = 1;
                    }
                    if ([self intersection:npcSprite14 with:playerImage]) {
                        examine = 2;
                    }
                    //'------------------------------------------------------------------------------------------------
                    
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        [self print:@"Beholder" message:@"Zzzzzzz..."];
                    }
                    if (examine == 2) {
                        [self print:@"Mimic" message:@"I was suppose to be an enemy in the third dungeon, but I bit my tongue and had to go home. I've learned my lesson: don't talk with food in your mouth, it's impolite and can bring you more pain than a bad tempered dragon!"];
                    }
                    break;
                }
                case 206: {
                    int examine = 0;
                    
                    if (gameData.gridY == 2) {
                        if (gameData.gridX == 4) examine = 1;
                    }
                    if (gameData.gridY == 3) {
                        if (gameData.gridX == 3) examine = 2;
                    }
                    if (gameData.gridY == 3) {
                        if (gameData.gridX == 5) examine = 3;
                    }
                    if (gameData.gridY == 4) {
                        if (gameData.gridX == 4) examine = 4;
                    }
                    //'------------------------------------------------------------------------------------------------
                    
                    if (examine == 0) {
                        [self print:@"You find nothing of interest here." message:nil];
                    }
                    if (examine == 1) {
                        [self print:@"Silverwind" message:@"Ah, how are you enjoying the game? We're already planning the next one. make sure you explore each dungeon thoroughly, for there's plenty of secrets to find if you look hard enough."];
                    }
                    if (examine == 2) {
                        [self print:@"Woodhaven" message:@"I was in charge of recruiting enemies for the game. The Undead were quite put out that they didn't get an appearance, but we've promised them a big role in the next one."];
                    }
                    if (examine == 3) {
                        [self print:@"Jinxycat" message:@"Hmm... what should I say... oh, I know: Be careful while exploring dungeons adventurer, for many dangerous monsters inhabit them! ... I guess you already knew that though, huh?"];
                    }
                    if (examine == 4) {
                        [self print:@"Sora" message:@"The next game will be hugely bigger than this one. There'll be quests, character classes, guild, party combat, battle pets and much, much more! Well, we're AIMING to include all that, hehe...."];
                    }
                    break;
                }

                default: {
                    [self print:@"You find nothing of interest here." message:nil];
                    break;
                }
            }
        }
    }
}

- (void)special {
    if (gameData.card == 49) {
        
        if (gameData.brigandevent == 1) {
            [NSThread sleepForTimeInterval:1.0];
            [self print:@"Brigand Conjurer" message:@"Hahahaha! Your resistance is a wasted effort. We'll plunder your town for all its worth!" tag:49];
        } else
            
            if (gameData.brigandevent == 2) {
                [NSThread sleepForTimeInterval:0.25];
                [self updateSprite:npcSprite12 x:49 y:93];
                [UIView animateWithDuration:0.25 animations:^{
                    [self updateSprite:npcSprite12 x:93 y:93];
                } completion:^(BOOL finished){
                    [self updateSprite:npcSprite12 x:-500 y:-500];
                    [self updateSprite:npcSprite11 x:93 y:93];
                    [UIView animateWithDuration:0.5 animations:^{
                        [self updateSprite:npcSprite11 x:49 y:93];
                    } completion:^(BOOL finished){
                        [self updateSprite:npcSprite11 x:93 y:181];
                        [UIView animateWithDuration:0.5 animations:^{
                            [self updateSprite:npcSprite11 x:49 y:181];
                        } completion:^(BOOL finished){
                            [self updateSprite:npcSprite11 x:-500 y:-500];
                            [self print:[NSString stringWithFormat:@"Human Sentry",gameData.playername] message:[NSString stringWithFormat:@"%@! Thank goodness you've come, these brigands are trying to raid the town!",gameData.playername] tag:49];
                            [self updateSprite:tileSprite5 x:93 y:137];
                        }];
                    }];
                }];
            } else
                
                
                if (gameData.brigandevent == 3) {
                    [NSThread sleepForTimeInterval:1.0];
                    NSString* brigandspeech = @"";
                    if ([gameData.playerrace isEqualToString: @"Human"]) {
                        if ([gameData.playergender isEqualToString: @"Male"]) brigandspeech = @"So, you brought backup eh? Foolish boy, I'll deal with you personally...";
                        if ([gameData.playergender isEqualToString: @"Female"]) brigandspeech = @"So, you brought backup eh? Foolish girl, I'll deal with you personally...";
                    }
                    if ([gameData.playerrace isEqualToString: @"Elf"]) brigandspeech = @"So, you brought backup eh? Foolish Elf, I'll deal with you personally...";
                    if ([gameData.playerrace isEqualToString: @"Dwarf"]) brigandspeech = @"So, you brought backup eh? Foolish Dwarf, I'll deal with you personally...";
                    if ([gameData.playerrace isEqualToString: @"Gnome"]) brigandspeech = @"So, you brought backup eh? Foolish Gnome, I'll deal with you personally...";
                    [self print:@"Brigand Conjurer" message:brigandspeech tag:49];
                } else
                    
                    
                    if (gameData.brigandevent == 4) {
                        [NSThread sleepForTimeInterval:1.0];
                        [UIView animateWithDuration:0.5 animations:^{
                            [self updateSprite:tileSprite5 x:93 y:137];
                        } completion:^(BOOL finished){
                            //[NSThread sleepForTimeInterval:0.25];
                            npcSprite10 = [self updateSprite:npcSprite10 x:137 y:137 image:@"Yellow Glow.gif"];
                            npcSprite10.alpha = 0.0;
                            [UIView animateWithDuration:0.25 animations:^{
                                npcSprite10.alpha = 1.0;
                            } completion:^(BOOL finished2){
                                //[NSThread sleepForTimeInterval:0.5];
                                [gameData playSoundEffect:@"Teleport"];
                                [self print:@"Brigand Conjurer" message:@"*summons*" tag:49];
                                npcSprite10 = [self updateSprite:npcSprite10 x:137 y:137 image:@"Air Elemental.gif"];
                            }];
                        }];
                    } else
                        
                        if (gameData.brigandevent == 5) {
                            //[NSThread sleepForTimeInterval:0.5];
                            [UIView animateWithDuration:1.0 animations:^{
                                [self updateSprite:npcSprite10 x:269 y:137];
                            } completion:^(BOOL finished){
                                [NSThread sleepForTimeInterval:0.1];
                                gameData.brigandevent = 6;
                                gameData.NPCsprite = @"Air Elemental.gif";
                                gameData.NPCnumber = 1;
                                gameData.blockrun = 1;
                                [self initiateBattle];
                            }];
                        } else 
                            
                            
                            if (gameData.brigandevent == 6) {
                                [NSThread sleepForTimeInterval:1.0];
                                [self updateSprite:npcSprite12 x:49 y:93];
                                [UIView animateWithDuration:1.0 animations:^{
                                    [self updateSprite:npcSprite12 x:93 y:93];
                                } completion:^(BOOL finished){
                                    [self updateSprite:tileSprite3 x:-500 y:-500];
                                    [NSThread sleepForTimeInterval:0.5];
                                    [self updateSprite:npcSprite12 x:49 y:181];
                                    [UIView animateWithDuration:1.0 animations:^{
                                        [self updateSprite:npcSprite12 x:93 y:181];
                                    } completion:^(BOOL finished){
                                        [self updateSprite:tileSprite4 x:-500 y:-500];
                                        [self updateSprite:npcSprite12 x:-500 y:-500];
                                        //[NSThread sleepForTimeInterval:1.0];
                                        [self print:@"Brigand Conjurer" message:@"Is that all you've got? I'm not finished with you yet..." tag:49];
                                    }];
                                }];
                            } else 
                                
                                
                                if (gameData.brigandevent == 7) {
                                    npcSprite10 = [self updateSprite:npcSprite10 x:137 y:137 image:@"Yellow Glow.gif"];
                                    npcSprite10.alpha = 0.0;
                                    [UIView animateWithDuration:0.25 animations:^{
                                        npcSprite10.alpha = 1.0;
                                    } completion:^(BOOL finished){
                                        //[NSThread sleepForTimeInterval:0.5];
                                        npcSprite10 = [self updateSprite:npcSprite10 x:137 y:137 image:@"Ice Elemental.gif"];
                                        [gameData playSoundEffect:@"Teleport"];
                                        [self print:@"Brigand Conjurer" message:@"*summons*" tag:49];
                                    }];
                                } else
                                    
                                    if (gameData.brigandevent == 8) {
                                        
                                        //[NSThread sleepForTimeInterval:1.0];
                                        [UIView animateWithDuration:1.0 animations:^{
                                            [self updateSprite:npcSprite10 x:269 y:137];
                                        } completion:^(BOOL finished){
                                            [NSThread sleepForTimeInterval:0.1];
                                            gameData.brigandevent = 9;
                                            gameData.NPCsprite = @"Ice Elemental.gif";
                                            gameData.NPCnumber = 1;
                                            gameData.blockrun = 1;
                                            [self initiateBattle];
                                        }];
                                    } else
                                        
                                        
                                        if (gameData.brigandevent == 9) {
                                            [NSThread sleepForTimeInterval:0.1];
                                            [self print:@"Brigand Conjurer" message:@"Curses!" tag:49];
                                        }
        
        if (gameData.brigandevent == 10) {
            [NSThread sleepForTimeInterval:0.2];
            [self updateSprite:npcSprite12 x:49 y:137];
            [UIView animateWithDuration:1.0 animations:^{
                [self updateSprite:npcSprite12 x:93 y:137];
            } completion:^(BOOL finished){
                [self updateSprite:npcSprite12 x:-500 y:-500];
                [self updateSprite:tileSprite5 x:-500 y:-500];
                
                tileSprite1.alpha = 0.99;
                [UIView animateWithDuration:0.25 animations:^{
                    tileSprite1.alpha = 1;
                } completion:^(BOOL finished){
                    [self updateSprite:tileSprite1 x:93 y:49];
                    tileSprite2.alpha = 0.99;
                    [UIView animateWithDuration:0.25 animations:^{
                        tileSprite2.alpha = 1;
                    } completion:^(BOOL finished){
                        [self updateSprite:tileSprite2 x:93 y:137];
                        gameData.gridX = 7;
                        gameData.gridY = 4;
                        [self goToCard:21];
                    }];
                }];
            }];
        }
    } else
        if (gameData.card == 72) {
            if (gameData.wizardevent == 0) {
                if ([gameData.playerrace isEqualToString: @"Human"]) {
                    if ([gameData.playergender isEqualToString: @"Male"]) [self print:@"Elf Mage" message:@"Ah, good day to you sir!" tag:0];
                    if ([gameData.playergender isEqualToString: @"Female"]) [self print:@"Elf Mage" message:@"Ah, good day to you miss!" tag:0];
                }
                if ([gameData.playerrace isEqualToString: @"Elf"]) [self print:@"Elf Mage" message:@"Ah, good day to you my Elven friend!" tag:0];
                if ([gameData.playerrace isEqualToString: @"Dwarf"]) [self print:@"Elf Mage" message:@"Ah, good day to you master Dwarf!" tag:0];
                if ([gameData.playerrace isEqualToString: @"Gnome"]) [self print:@"Elf Mage" message:@"Ah, good day to you master Gnome!" tag:0];
                gameData.wizardevent += 1;
            } else if (gameData.wizardevent == 1) {
                [self updateSprite:npcSprite11 x:93 y:137];
                gameData.wizardevent += 1;
                [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(special) userInfo:nil repeats:NO];
            } else if (gameData.wizardevent == 2) {
                [self updateSprite:npcSprite11 x:49 y:137];
                gameData.wizardevent += 1;
                [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(special) userInfo:nil repeats:NO];
            } else if (gameData.wizardevent == 3) {
                [self print:@"Elf Mage" message:@"Well, I suppose you're wondering what I'm doing down here?" tag:0];
            } else if (gameData.wizardevent == 6) {
                [npcSprite11 removeFromSuperview];
                [npcSprite11 release];
                npcSprite11 = nil;
                gameData.wizardevent += 1;
                [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(special) userInfo:nil repeats:NO];
            } else if (gameData.wizardevent == 7) {
                gameData.wizardevent = -1;
                [self goToCard:71];
            }
        } else
            if (gameData.card == 155){
                switch (gameData.event) {
                    case 0:
                    {
                        gameData.playerX = 49;
                        gameData.playerY = 137;
                        playerImage.alpha = 1.0;
                        [self performSelector:@selector(special) withObject:nil afterDelay:1.0];
                        break;
                    }
                    case 1:
                    {
                        gameData.playerX = 93;
                        [self performSelector:@selector(special) withObject:nil afterDelay:1.0];
                        break;
                    }
                    case 2:
                    {
                        [self print:@"Human Cleric" message:[NSString stringWithFormat:@"%@! You... you recovered the artifact?",gameData.playername] tag:155];
                        break;
                    }
                    case 3:
                    {
                        [self print:@"Human Cleric" message:[NSString stringWithFormat:@"Finally... after long last, we can return the artifact to the Elves and close this entrance to the Underdark for good. %@... because of your efforts, the entire realm is safe again.",gameData.playername] tag:155];
                        break;
                    }
                    case 4:
                    {
                        [self print:@"Human Cleric" message:[NSString stringWithFormat:@"Thank you %@, for saving us all!",gameData.playername] tag:155];
                        break;
                    }
                    case 5:
                    {
                        [self print:@"Crowd" message:@"*Cheers*" tag:155];
                        break;
                    }
                    case 6:
                    {
                        [gameData playAudio:@"Title Music"];
                        [self performSelector:@selector(special) withObject:nil afterDelay:1.0];
                        break;
                    }
                    case 7:
                    {
                        [self setMapImage:158];
                        [self performSelector:@selector(special) withObject:nil afterDelay:1.0/5.0];
                        break;
                    }
                    case 8:
                    {
                        [self setMapImage:159];
                        [self performSelector:@selector(special) withObject:nil afterDelay:1.0/5.0];
                        break;
                    }
                    case 9:
                    {
                        [self setMapImage:160];
                        [self performSelector:@selector(special) withObject:nil afterDelay:1.0/5.0];
                        break;
                    }
                    case 10:
                    {
                        [self setMapImage:161];
                        [self performSelector:@selector(special) withObject:nil afterDelay:1.0/5.0];
                        break;
                    }
                    case 11:
                    {
                        [self setMapImage:162];
                        [self performSelector:@selector(special) withObject:nil afterDelay:1.0/5.0];
                        break;
                    }
                    case 12:
                    {
                        [self setMapImage:163];
                        [self performSelector:@selector(special) withObject:nil afterDelay:1.0/5.0];
                        break;
                    }
                    case 13:
                    {
                        [self setMapImage:164];
                        [self performSelector:@selector(special) withObject:nil afterDelay:1.0/5.0];
                        break;
                    }
                    case 14:
                    {
                        gameData.playerX = 700;
                        [UIView animateWithDuration:2.0 animations:^{
                            [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
                        } completion:^(BOOL finished){
                            [self performSelector:@selector(special) withObject:nil afterDelay:1.0]; 
                        }];
                        break;
                    }
                    case 15:
                    {
                        if ([gameData theAudio]) [gameData.theAudio stop];
                        
                        UINavigationController* nav = [self navigationController];
                        
                        TitleScreen* titleScreen;
                        
                        for (UIViewController* controller in [nav viewControllers]) {
                            if ([controller isMemberOfClass:[TitleScreen class]]) {
                                titleScreen = (TitleScreen*)controller;
                            }
                        }
                        
                        [[self navigationController] popToViewController:titleScreen animated:NO];
                        
                        CreditScreen *credits = [[CreditScreen alloc] initWithNibName:@"CreditScreen" bundle:nil];
                        
                        [[titleScreen navigationController] pushViewController:credits animated:YES];
                        
                        [titleScreen runTitleAnimation];
                        break;
                    }
                }
                gameData.event += 1;
                if (gameData.event < 14) {
                    [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
                }
            }
    if (gameData.card == 206) {
        if (gameData.secretCastle2 == 0) {
            [self print:@"Woodhaven: Can we have an overworld battle engine in the next game?\n\nSora: Not if Silverwind is the one programming it...\n\nSilverwind: HEY!" message:nil tag:0];
        }
        if (gameData.secretCastle2 == 1) {
            [self print:@"Woodhaven: So... uh... can I be a god in the next game?\n\nSilverwind: For the last time, no!" message:nil tag:0];
        }
        if (gameData.secretCastle2 == 2) {
            [self print:@"Jinxycat: Will there be lizardmen in the next game?\n\nSilverwind: Perhaps, if I can figure out how to draw them. I'm still stuck on the Kobalds!" message:nil tag:0];
        }
        gameData.secretCastle2 += 1;
    }
}

- (NSString*)getEnemySpeech:(NSString*)enemy {
    NSString* NPCspeech = @"*ERROR! An error was detected in the NPC Speech routine*";
    if ([enemy isEqualToString: @"Large Rat.gif"]) NPCspeech = @"Large Rat: *squeak*";
    if ([enemy isEqualToString: @"Shadow Skulker.gif"]) NPCspeech = @"Shadow Skulker: *squeak*";
    if ([enemy isEqualToString: @"GoblinM1.gif"]) NPCspeech = @"Goblin Scavenger: Yipes! A surface dweller!";
    
    if ([enemy isEqualToString: @"Giant Rat.gif"]) NPCspeech = @"Giant Rat: *squeak*";
    if ([enemy isEqualToString: @"GoblinM2.gif"]) NPCspeech = @"Goblin Pickpocket: You no take my gold!";
    
    if ([enemy isEqualToString: @"GoblinM3.gif"]) NPCspeech = [NSString stringWithFormat:@"Goblin Warrior: Me thinks me smells a %@...",gameData.playerrace];
    if ([enemy isEqualToString: @"GoblinM4.gif"]) NPCspeech = @"Goblin Shaman: Get the intruder!";
    if ([enemy isEqualToString: @"Giant Shadow Skulker.gif"]) NPCspeech = @"Giant Shadow Skulker: *squeak*";
    
    if ([enemy isEqualToString: @"OrcM1.gif"]) NPCspeech = @"Orc Scout: *grunt*";
    if ([enemy isEqualToString: @"OrcM2.gif"]) NPCspeech = @"Orc Bone Crusher: You won't escape the wrath of the Orcs!";
    if ([enemy isEqualToString: @"OrcM3.gif"]) {
        if ([gameData.playerrace isEqualToString:@"Human"]) {
            NPCspeech = [NSString stringWithFormat:@"Orc War Hero: Taste my blade, %@!",gameData.playerrace];
        } else {
            NPCspeech = [NSString stringWithFormat:@"Orc Champion: Taste my blade, %@!",gameData.playerrace];
        }
    }
    
    if ([enemy isEqualToString: @"ImpM1.gif"]) NPCspeech = @"Imp Shadow Claw: *cackle*";
    if ([enemy isEqualToString: @"ImpM2.gif"]) NPCspeech = @"Imp Spell Slinger: *cackle*";
    if ([enemy isEqualToString: @"ImpM3.gif"]) NPCspeech = @"Imp Demon Fang: *snarl*";
    if ([enemy isEqualToString: @"Clay Golem.gif"]) NPCspeech = @"Clay Golem: *stomp... stomp...*";
    
    if ([enemy isEqualToString: @"DuergarM1.gif"]) {
        if ([gameData.playerrace isEqualToString: @"Human"]) NPCspeech = @"Duergar Gloom Shifter: You're a long way from the surface, aren't you Human? Your grave will be far from the sunlight.";
        if ([gameData.playerrace isEqualToString: @"Elf"]) NPCspeech = @"Duergar Gloom Shifter: You're a long way from the forest, aren't you Elf? Your grave will be far from the sunlight.";
        if ([gameData.playerrace isEqualToString: @"Dwarf"]) NPCspeech = @"Duergar Gloom Shifter: You're a long way from your fortress, aren't you Dwarf? Your grave will be far from the sunlight.";
        if ([gameData.playerrace isEqualToString: @"Gnome"]) NPCspeech = @"Duergar Gloom Shifter: You're a long way from home, aren't you Gnome? Your grave will be far from the sunlight.";
    }
    
    if ([enemy isEqualToString: @"DuergarM2.gif"]) NPCspeech = @"Duergar Stone Melder: How dare you enter the realm of the Grey Dwarves! You'll rot in irons for this!";
    if ([enemy isEqualToString: @"Stone Golem.gif"]) NPCspeech = @"Stone Golem: *stomp... stomp...*";
    if ([enemy isEqualToString: @"Gargoyle.gif"]) NPCspeech = @"Gargoyle: *shriek*";
    
    if ([enemy isEqualToString: @"DrowM1.gif"]) NPCspeech = [NSString stringWithFormat:@"Drow Dread Soldier: Take a good look %@, for the Drow realm is the last thing you'll ever see.",gameData.playerrace];
    if ([enemy isEqualToString: @"DrowF1.gif"]) NPCspeech = [NSString stringWithFormat:@"Drow Dread Soldier: Take a good look %@, for the Drow realm is the last thing you'll ever see.",gameData.playerrace];
    
    
    if ([enemy isEqualToString: @"DrowM2.gif"]) NPCspeech = [NSString stringWithFormat:@"Drow Doom Caster: This is what the surface sends to recover the amulet? A mere %@? Bah, what mockery!",gameData.playerrace];
    if ([enemy isEqualToString: @"DrowF2.gif"]) NPCspeech = [NSString stringWithFormat:@"Drow Doom Caster: This is what the surface sends to recover the amulet? A mere %@? Bah, what mockery!",gameData.playerrace];
    
    if ([enemy isEqualToString: @"DrowM3.gif"]) NPCspeech = @"Drow Abyss Blade: You'll make a fine tribute to Lolth!";
    if ([enemy isEqualToString: @"DrowF3.gif"]) NPCspeech = @"Drow Abyss Blade: You'll make a fine tribute to Lolth!";
    if ([enemy isEqualToString: @"IllithidM1.gif"]) NPCspeech = @"Illithid Sorcerer: You've fallen too deep into your nightmares, and now there's no escape...";
    return NPCspeech;
}

- (void)viewDidAppear:(BOOL)animated {
    examineBtn.enabled = TRUE;
    menuBtn.enabled = TRUE;
    enteringBattle = FALSE;
    if (timerPaused) {
        timerPaused = FALSE;
        timer = [NSTimer scheduledTimerWithTimeInterval:timerInterval target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
    }
}
- (void)viewDidDisappear:(BOOL)animated {
    examineBtn.enabled = FALSE;
    menuBtn.enabled = FALSE;
    [arrowPad disable];
    if (timer) {
        timerPaused = TRUE;
        [timer invalidate];
        timer = nil;
    }
}

- (void)alertView:(UIAlertView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    if ([actionSheet tag] == 5) {
        if (timerPaused) {
            timerPaused = FALSE;
            timer = [NSTimer scheduledTimerWithTimeInterval:timerInterval target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
        }
    } else {
        // the user clicked one of the OK/Cancel buttons
        switch (gameData.card) {
            case 20: {
                if (buttonIndex == 1) {
                    gameData.playertrinket = gameData.chestitem;
                }
                break;
            }
            case 42: {
                if (buttonIndex == 0) {
                    [self print:@"Gnome Traveller" message:@"Oh, ok then. I guess I'll just ask someone else."];
                } else {
                    gameData.playertrinket = [NSString stringWithString:gameData.rareitembuyeritem];
                    [self print: @"Gnome Traveller" message:@"Thanks! Pleasure doing business with you."];
                }
                gameData.rareitembuyerstate = 1;
                break;
            }
            case 49: {
                if (actionSheet.tag == 49) {gameData.brigandevent+=1;
                    [self performSelector:@selector(special) withObject:nil afterDelay:0.5];
                }
                break;
            }
            case 72: {
                if (gameData.wizardevent == 6) {
                    [gameData playSoundEffect:@"Teleport"];
                    [npcSprite11 removeFromSuperview];
                    [npcSprite11 release];
                    npcSprite11 = nil;
                    npcSprite11 = [self updateSprite:npcSprite11 x:49 y:137 image:@"Green Glow.gif"];
                    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(special) userInfo:nil repeats:NO];
                }
                
                if (gameData.wizardevent == 5) {
                    [self print:@"Elf Mage" message:@"Well, there's no point in me hanging around here any longer. I'll leave catching the chest up to you. Good luck, it's darn fast!\n*Teleports*" tag:0];
                    gameData.wizardevent += 1;
                }
                
                if (gameData.wizardevent == 4) {
                    [self print:@"Elf Mage" message:@"One of my spells missed the Goblin it was directed at and hit a treasure chest instead. Now the blasted thing's got a mind of its own!" tag:0];
                    gameData.wizardevent += 1;
                }
                
                if (gameData.wizardevent == 3) {
                    [self print:@"Elf Mage" message:@"I thought I'd help out by disposing of a few of the foul creatures that lurk down here, and it was going rather well until a couple of minutes ago..." tag:0];
                    gameData.wizardevent += 1;
                }
                
                if (gameData.wizardevent == 1) {
                    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(special) userInfo:nil repeats:NO];
                }
                break;   
            }
            case 155: {[self special];break;}
            case 206: {if (gameData.secretCastle2 < 3) {[NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(special) userInfo:nil repeats:NO];}break;}
        }
    }
}

- (void)dealloc {
    [spriteCache removeAllObjects];
    [spriteCache release];
    for (int i = 0; i < 255; i++) {
        if (cardCache[i] != nil) {[cardCache[i] release];}
    }
    [super dealloc];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)setMapImage:(int)card {
    if (cardCache[card] == nil) {UIImage* img = [UIImage imageNamed:[NSString stringWithFormat:@"Map %d.png",card]];[img retain];cardCache[card] = img;}
    cardImage.image = cardCache[card];
}
 
- (void)goToCard:(int)card {
    
    //Stop timer
    timerPaused = FALSE;
    if (timer) {[timer invalidate];timer = nil;}
    for (id subview in [cardImage subviews]) {
        [subview removeFromSuperview];
    }
    gameData.RECENTCARD = gameData.card;
    gameData.card = card;
    gameData.battlereturn = card;
    gameData.blockrun = 0;
    gameData.gridlayout = @"";
    gameData.cardSpawnsNPCs = FALSE;
    enteringBattle = FALSE;
    //Reload the map
    int cardImgNum = card;
    if (card == 49) {
        cardImgNum = 21;
    }
    if (card == 72) {
        cardImgNum = 71;
    }
    if (card == 138) {
        if (gameData.lv6exitsecret == 1) cardImgNum = 142;
        if (gameData.lv6exitsecret == 2) cardImgNum = 143;
        if (gameData.lv6exitsecret == 3) cardImgNum = 144;
        if (gameData.lv6exitsecret == 0) cardImgNum = card;
    }
    [self setMapImage:cardImgNum];
    [cardImage insertSubview:playerImage atIndex:0];
    [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
    
    [self loadCard];
    
    [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
     
}

- (void)startTimer:(int)millisec {
    if (timer) {[timer invalidate]; timer = nil;}
    timerInterval = millisec/100.0 + 0.05; //Slow down a little
    timer = [NSTimer scheduledTimerWithTimeInterval:timerInterval target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
}
- (IBAction)goToMenu:(id)sender {
    //Switch to GameScreen
    if (!enteringBattle && gameData.card != 49 && gameData.card != 155) {
        [arrowPad disable];
        enteringBattle = TRUE;
        GameMenu *controller = [[GameMenu alloc] initWithNibName:@"GameMenu" bundle:nil];
        
        [[self navigationController] pushViewController:controller animated:YES];
    }
}
- (void)goToWeaponShop {
    [arrowPad disable];
    GameShop *controller = [[GameShop alloc] initWithNibName:@"GameShop" bundle:nil];
    [controller loadWeaponShop];
    [[self navigationController] pushViewController:controller animated:YES];
}
- (void)goToArmorShop {
    [arrowPad disable];
    GameShop *controller = [[GameShop alloc] initWithNibName:@"GameShop" bundle:nil];
    [controller loadArmorShop];
    [[self navigationController] pushViewController:controller animated:YES];
}
- (void)initiateBattle {
    [arrowPad disable];
    examineBtn.enabled = FALSE;
    menuBtn.enabled = FALSE;
    
    enteringBattle = TRUE;
    
    GameBattle *controller = [[GameBattle alloc] initWithNibName:@"GameBattle" bundle:nil];
    [[self navigationController] pushViewController:controller animated:YES];
}
- (void)teleport {
    [self blockInteraction];
    [arrowPad disable];
    for (id subview in [cardImage subviews]) {
        [subview removeFromSuperview];
    }
    //Stop timer
    timerPaused = FALSE;
    if (timer) {[timer invalidate];timer = nil;}
    gameData.gridlayout = @"";
    gameData.cardSpawnsNPCs = FALSE;
    enteringBattle = FALSE;
    
    [self setMapImage:12];
    [cardImage addSubview:playerImage];
    gameData.NPCalive = 0;
    gameData.NPC2alive = 0;
    [gameData playSoundEffect:@"Teleport"];
    int NEWcard;
    if (gameData.card == 55) {
        if (gameData.teleporter == 2) {
            gameData.gridY = 6;
            gameData.gridX = 2;
            NEWcard = 68;
        }
        if (gameData.teleporter == 3) {
            gameData.gridY = 5;
            gameData.gridX = 3;
            NEWcard = 84;
        }
        if (gameData.teleporter == 4) {
            gameData.gridY = 3;
            gameData.gridX = 4;
            NEWcard = 95;
        }
        if (gameData.teleporter == 5) {
            gameData.gridY = 6;
            gameData.gridX = 4;
            NEWcard = 116;
        }
        if (gameData.teleporter == 6) {
            gameData.gridY = 5;
            gameData.gridX = 6;
            NEWcard = 138;
        }
        if (gameData.teleporter == 7) {
            gameData.gridY = 3;
            gameData.gridX = 6;
            NEWcard = 145;
        }
        [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
        gameData.playerY = gameData.gridY * 44;
        gameData.playerY = gameData.playerY - 39;
        gameData.playerX = gameData.gridX * 44;
        gameData.playerX = gameData.playerX - 39;
        
        [UIView animateWithDuration:1.0 animations:^{
            [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
        } completion:^(BOOL finished){
            [gameData playAudio:@"Cave Music"];
            [self goToCard:NEWcard];
            [self unblockInteraction];
        }];
    } else if (gameData.teleporter != -1 && gameData.teleporter != -2) {
        [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
        gameData.gridY = 2;
        gameData.gridX = 3;
        gameData.playerY = gameData.gridY * 44;
        gameData.playerY = gameData.playerY - 39;
        gameData.playerX = gameData.gridX * 44;
        gameData.playerX = gameData.playerX - 39;
        [UIView animateWithDuration:1.0 animations:^{
            [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
        } completion:^(BOOL finished){
            [gameData playAudio:@"Cave Music"];
            [self goToCard:55];
            [self unblockInteraction];
        }];
    }
    else {
        if (gameData.teleporter == -1) {
            [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
            gameData.gridY = 6;
            gameData.gridX = 4;
            gameData.playerY = gameData.gridY * 44;
            gameData.playerY = gameData.playerY - 39;
            gameData.playerX = gameData.gridX * 44;
            gameData.playerX = gameData.playerX - 39;
            [UIView animateWithDuration:1.0 animations:^{
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
            } completion:^(BOOL finished){
                [self goToCard:204];
                [self unblockInteraction];
            }];
        }
        if (gameData.teleporter == -2) {
            [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
            gameData.gridY = 4;
            gameData.gridX = 4;
            gameData.playerY = gameData.gridY * 44;
            gameData.playerY = gameData.playerY - 39;
            gameData.playerX = gameData.gridX * 44;
            gameData.playerX = gameData.playerX - 39;
            [UIView animateWithDuration:1.0 animations:^{
                [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY];
            } completion:^(BOOL finished){
                [gameData playAudio:@"Surface Music"];
                [self goToCard:33];
                [self unblockInteraction];
            }];
        }
    }
}
- (void)saveGame {
    //Load
    NSMutableArray *array = (NSMutableArray*)[self loadObjectFromFile:@"savedGames.sav"];
    
    if(array) {
        if (delegate.savedFile == -1) {
            [array addObject:gameData];
            delegate.savedFile = [array count]-1;
        } else {
            [array replaceObjectAtIndex:delegate.savedFile withObject:gameData];
        }
    } else {
        array = [NSMutableArray arrayWithObject:gameData];
        delegate.savedFile = 0;
    }
    
    //Save
	[self saveObject:array toFile:@"savedGames.sav"];
}
- (NSObject*)loadObjectFromFile:(NSString*)filePath {
    NSFileManager *manager = [NSFileManager defaultManager];
	NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *docDirectory = [path objectAtIndex:0];
	NSString *file = [docDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"/%@",filePath]];
    
    if([manager fileExistsAtPath:file]) {
        NSMutableData *data = [NSData dataWithContentsOfFile:file];
        NSKeyedUnarchiver *decode = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
        NSObject *object = [decode decodeObjectForKey:@"save"];
        [decode finishDecoding];
        [decode release];
        
        return object;
    }
    return nil;
}
- (void)saveObject:(NSObject*)object toFile:(NSString*)filePath {
	NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *docDirectory = [path objectAtIndex:0];
	NSString *file = [docDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"/%@",filePath]];
    
    NSMutableData *data = [NSMutableData data];
	NSKeyedArchiver *encode = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
    
	[encode encodeObject:object forKey:@"save"];
	[encode finishEncoding];
    
	[data writeToFile:file atomically:YES];
	[encode release];
}

#pragma mark - View lifecycle
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    spriteCache = [[NSMutableDictionary alloc] init];
    for (int i = 0; i < 255; i++) {
        cardCache[i] = nil;
    }
    timer = nil;
    delegate = (Quest_of_MagicAppDelegate*)[[UIApplication sharedApplication] delegate];
    gameData = delegate.gameData;
    cardImage.frame = CGRectMake(cardImage.frame.origin.x, cardImage.frame.origin.y, 307, 315);
    playerImage = [self updateSprite:playerImage x:gameData.playerX y:gameData.playerY image:gameData.playersprite];
    //playerImage.image = [UIImage imageNamed:gameData.playersprite];
    [arrowPad setGameScreen:self];
     
    [super viewDidLoad];
}

- (void)updateSprite:(UIImageView*)sprite x:(int)x y:(int)y {
    sprite.frame = CGRectMake(x,y-10,sprite.image.size.width,sprite.image.size.height);
}
- (UIImageView*)updateSprite:(UIImageView*)sprite x:(int)x y:(int)y image:(NSString*)image {
    BOOL remake = false;
    if (sprite) {
        if (![sprite isMemberOfClass:[UIImageView class]]) {
            remake = true;
        }
    } else {remake = true;}
    if ([spriteCache objectForKey:image] == NULL) {
        [spriteCache setValue:[UIImage imageNamed:image] forKey:image];
    }
    if (remake) {
        [sprite removeFromSuperview];[sprite release]; sprite = nil;
        sprite = [[UIImageView alloc] initWithImage:[spriteCache objectForKey:image]];
    } else {
        sprite.image = [spriteCache objectForKey:image];
    }
    [self updateSprite:sprite x:x y:y];
    [cardImage insertSubview:sprite atIndex:0];
    return sprite;
}

- (void)print:(NSString*)title message:(NSString*)message {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alert setTag:5];
    [alert show];
    [alert release];
    [arrowPad disable];
    if (timer) {
        timerPaused = TRUE;
        timerInterval = [timer timeInterval];
        [timer invalidate];
        timer = nil;
    }
}
- (void)print:(NSString*)title message:(NSString*)message tag:(int)tag {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alert setTag:tag];
    [alert show];
    [alert release];
    [arrowPad disable];
    if (timer) {
        timerPaused = TRUE;
        timerInterval = [timer timeInterval];
        [timer invalidate];
        timer = nil;
    }
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (BOOL)intersection:(UIImageView*)view1 with:(UIImageView*)view2 {
    if ([[cardImage subviews] containsObject:view1] && [[cardImage subviews] containsObject:view2]) {
        if (CGRectIntersectsRect(view1.frame, view2.frame)) {
            return TRUE;
        }
    }
    return FALSE;
}

- (void)blockInteraction {
    interactionBlockCount += 1;
    [self.view setUserInteractionEnabled:FALSE];
}
- (void)unblockInteraction {
    interactionBlockCount -= 1;
    if (interactionBlockCount <= 0) {
        interactionBlockCount = 0;
        [self.view setUserInteractionEnabled:TRUE];
    }
}

@end
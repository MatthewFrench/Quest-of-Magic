//
//  Quest_of_MagicViewController.h
//  Quest of Magic
//
//  Created by Matthew French on 4/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioServices.h>
#import "GameData.h"
#import "GameMenu.h"
#import "GameShop.h"
#import "GameBattle.h"
#import "ArrowPad.h"
#import <QuartzCore/QuartzCore.h>

@interface GameScreen : UIViewController {
    IBOutlet UIImageView* cardImage,*playerImage;
    GameData* gameData;
    NSTimer* timer;
    BOOL timerPaused;
    NSTimeInterval timerInterval;
    
    UIImageView *treasureChest5,*treasureChest4,*treasureChest6,*npcSprite14,*npcSprite13,*npcSprite10,*npcSprite12,*npcSprite11;
    UIImageView* tileSprite1,*tileSprite2,*tileSprite3,*tileSprite4,*tileSprite5;
    UIImageView* slideWall3;
    
    IBOutlet UIButton* menuBtn,*examineBtn;
    IBOutlet ArrowPad* arrowPad;
    
    BOOL enteringBattle;
    
    int interactionBlockCount;
    
    UIImage* cardCache[255];
    NSMutableDictionary* spriteCache;
}
- (void)blockInteraction;
- (void)unblockInteraction;

- (void)setMapImage:(int)card;
- (void)goToCard:(int)card;
- (void)updateSprite:(UIImageView*)sprite x:(int)x y:(int)y;
- (UIImageView*)updateSprite:(UIImageView*)sprite x:(int)x y:(int)y image:(NSString*)image;
- (void)print:(NSString*)title message:(NSString*)message;
- (void)print:(NSString*)title message:(NSString*)message tag:(int)tag;
- (void)startTimer:(int)millisec;
- (IBAction)goToMenu:(id)sender;
- (void)goToWeaponShop;
- (void)goToArmorShop;
- (NSString*)getEnemySpeech:(NSString*)enemy;
- (IBAction)examine;
- (void)initiateBattle;
- (void)teleport;
- (void)saveGame;
- (NSObject*)loadObjectFromFile:(NSString*)filePath;
- (void)saveObject:(NSObject*)object toFile:(NSString*)filePath;
- (void)special;
- (BOOL)intersection:(UIImageView*)view1 with:(UIImageView*)view2;
- (void)keydown:(int)keydown;
@end

//
//  GameBattle.h
//  Quest of Magic
//
//  Created by Matthew French on 5/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameData.h"
#import "GameScreen.h"
#import "GameOver.h"

@interface GameBattle : UIViewController {
    GameData* gameData;
    IBOutlet UILabel *playerLbl,*enemyLbl;
    IBOutlet UILabel* textView;
    NSString* enemyname;
    int enemyHP,enemyLV,enemydropgold,enemypict,enemymaxHP,markerX,markerY,selectedbutton,BplayerY,BplayerX,BenemyY,BenemyX,test,playerhitalert,playermissalert,vampalert,vampfailedalert,healalert,nopotionsalert,escapealert,enemyhitalert,enemymissalert,enemystealalert,enemyhealalert,playerhit,vampamount,healamount,enemyhit,stealamount,enemyhealamount,blockrun,runaway,playerattackalert;
    IBOutlet UIImageView *playerAttackMarker17,*enemyAttackMarker16,*player15,*npc14,*healsteal18;
    IBOutlet UIView* battleView;
    IBOutlet UIButton *attackBtn,*potionButton,*escapeButton;
    IBOutlet UIView* exitView;
    BOOL won;
    NSString* getItem;
    NSMutableString* specialText, *battleText;
    
    int interactionBlockCount;
    
    IBOutlet UIView *playerHealthView, *enemyHealthView;
    IBOutlet UIImageView* playerHealthBar, *enemyHealthBar;
}
- (void)blockInteraction;
- (void)unblockInteraction;
- (void)updateSprite:(UIImageView*)sprite x:(int)x y:(int)y;
- (void)updateSprite:(UIImageView*)sprite x:(int)x y:(int)y image:(NSString*)image;
- (void)print:(NSString*)string;
- (void)setUpBattle;
- (void)setUpEnemy;
- (void)enemyAttack;
- (void)successfulEscape;
- (void)awardCard;
- (void)gameOver;
- (int)random:(NSString*)string;
- (IBAction)attackButton;
- (IBAction)potionButton;
- (IBAction)escapeButton;
- (IBAction)exitBattleMode;
- (void)updateStats;
- (void)updateHealthBars;
- (void)updatePlayerHealthBar;
- (void)updateEnemyHealthBar;
@end

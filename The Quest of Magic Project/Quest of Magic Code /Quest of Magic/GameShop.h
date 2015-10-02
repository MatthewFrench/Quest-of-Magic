//
//  GameShop.h
//  Quest of Magic
//
//  Created by Matthew French on 5/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameData.h"

@interface GameShop : UIViewController {
    IBOutlet UILabel* name, *race, *gender, *hp, *level, *expNeeded, *gold, *weapon, *armor, *trinket, *potions;
    IBOutlet UIButton* item1,*item2,*item3,*item4,*item5;
    IBOutlet UILabel* itemLabel1,*itemLabel2,*itemLabel3,*itemLabel4,*itemLabel5;
    GameData* gameData;
    int type;
}
- (void)updateStats;
- (IBAction)back;
- (void)loadWeaponShop;
- (void)loadArmorShop;
- (void)loadSpecialShop;
- (IBAction)buyItem1;
- (IBAction)buyItem2;
- (IBAction)buyItem3;
- (IBAction)buyItem4;
- (IBAction)buyItem5;
- (void)print:(NSString*)title message:(NSString*)message;

- (int)weaponRank:(NSString*)w;
- (int)armorRank:(NSString*)a;

@end

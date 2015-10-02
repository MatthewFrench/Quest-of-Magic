//
//  GameMenu.h
//  Quest of Magic
//
//  Created by Matthew French on 5/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameData.h"
#import "GameScreen.h"

@interface GameMenu : UIViewController {
    IBOutlet UILabel* name, *race, *gender, *hp, *level, *expNeeded, *gold, *weapon, *armor, *trinket, *potions;
    IBOutlet UIImageView* playerImageView,*backgroundImageView;
    GameData* gameData;
}
- (void)updateStats;
- (IBAction)back;
- (IBAction)drinkPotion;
- (IBAction)mainMenu;
@end

//
//  CharacterScreen.h
//  Quest of Magic
//
//  Created by Matthew French on 5/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameData.h"
#import "GameScreen.h"
#import "TitleScreen.h"

@interface CharacterScreen : UIViewController<UITextFieldDelegate> {
    GameData* gameData;
    UIAlertView *myAlertView;
}
- (IBAction)backFromCharacterView:(id)sender;
- (IBAction)humanMale:(id)sender;
- (IBAction)humanFemale:(id)sender;
- (IBAction)elfMale:(id)sender;
- (IBAction)elfFemale:(id)sender;
- (IBAction)dwarfMale:(id)sender;
- (IBAction)dwarfFemale:(id)sender;
- (void)switchToGameController;
@end

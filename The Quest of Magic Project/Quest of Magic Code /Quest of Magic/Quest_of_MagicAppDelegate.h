//
//  Quest_of_MagicAppDelegate.h
//  Quest of Magic
//
//  Created by Matthew French on 4/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVKit/AVKit.h>
#import "TitleScreen.h"
#import "GameData.h"

@interface Quest_of_MagicAppDelegate : NSObject <UIApplicationDelegate> {
    IBOutlet UINavigationController* nav;
    IBOutlet TitleScreen* titleScreen;
    
    GameData* gameData;
    int savedFile;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) GameData* gameData;
@property (nonatomic) int savedFile;

@end

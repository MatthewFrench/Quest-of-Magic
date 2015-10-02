//
//  StoryScreen.h
//  Quest of Magic
//
//  Created by Matthew French on 5/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameData.h"
#import "CharacterScreen.h"

@interface StoryScreen : UIViewController {
    NSMutableArray *storyline1,*storyline2,*storyline3,*storyline4;
    IBOutlet UIImageView *storylineImageView;
    int animationNum;
    UIImage *defaultStoryline;
    GameData* gameData;
    
    AVAudioPlayer *storyAudio;
}
- (IBAction)nextAnimation:(id)sender;
- (void)firstStoryLine;
- (NSMutableArray *)reversedArray:(NSMutableArray*)array;
- (void)playAudio:(NSString*)audio;
@end

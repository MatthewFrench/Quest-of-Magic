//
//  TitleScreen.h
//  Quest of Magic
//
//  Created by Matthew French on 4/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MediaPlayer/MediaPlayer.h"
#import "CreditScreen.h"
#import<AVFoundation/AVAudioPlayer.h>
#import "StoryScreen.h"
#import "LoadGameScreen.h"

@interface TitleScreen : UIViewController<AVAudioPlayerDelegate> {
    NSMutableArray* titleAppear,*titleSparkle;
    IBOutlet UIImageView* titleView;
    UIImage* defaultTitle;
    NSTimer* animationTimer;
    BOOL animationRunning;
    IBOutlet UIButton *creditsBtn,*playBtn,*loadBtn;
    
    AVAudioPlayer *theAudio;
}

- (IBAction)creditBtn:(id)sender;
- (IBAction)playBtn:(id)sender;
- (IBAction)loadBtn:(id)sender;
- (void)runTitleAnimation;
- (void)stopTitle;


- (NSMutableArray *)reversedArray:(NSMutableArray*)array;
@end

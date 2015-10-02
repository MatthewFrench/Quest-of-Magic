//
//  StoryScreen.m
//  Quest of Magic
//
//  Created by Matthew French on 5/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StoryScreen.h"
#import "Quest_of_MagicAppDelegate.h"
Quest_of_MagicAppDelegate *delegate;

@implementation StoryScreen

- (IBAction)nextAnimation:(id)sender {
    //Make the animation play backwards, then new animation play forwards.
    //Make the first appear.
    animationNum += 1;
    storylineImageView.image = defaultStoryline;
    storylineImageView.animationImages = [self reversedArray:(NSMutableArray*)storylineImageView.animationImages];
    storylineImageView.animationDuration = 0.4;
    storylineImageView.animationRepeatCount = 1;
    [storylineImageView startAnimating];
    //Now make it play forwards after done
    [UIView animateWithDuration:0.4 animations:^{} completion:^(BOOL  completed){
        if (animationNum <= 4) {
            if (animationNum == 2) {
                storylineImageView.image = [storyline2 lastObject];
                storylineImageView.animationImages = storyline2;
            }
            if (animationNum == 3) {
                storylineImageView.image = [storyline3 lastObject];
                storylineImageView.animationImages = storyline3;
            }
            if (animationNum == 4) {
                storylineImageView.image = [storyline4 lastObject];
                storylineImageView.animationImages = storyline4;
            }
            storylineImageView.animationDuration = 0.4;
            storylineImageView.animationRepeatCount = 1;
            [storylineImageView startAnimating];
            [self playAudio:[NSString stringWithFormat:@"Intro%d", animationNum]];
        } else if (animationNum == 5) {
            if (storyAudio) {[storyAudio release];storyAudio = nil;}
            //End of storyline, fade out and open character screen
            [UIView animateWithDuration:0.5 animations:^{
                self.view.alpha = 0.0;
            } completion:^(BOOL finished){
                CharacterScreen *controller = [[CharacterScreen alloc] initWithNibName:@"CharacterScreen" bundle:nil];
                [[self navigationController] pushViewController:controller animated:NO];
                self.view.alpha = 1.0;
            }];
        }
    }];
}
- (void)playAudio:(NSString*)audio {
    if (storyAudio) {[storyAudio release];storyAudio = nil;}
    NSString* path = [[NSBundle mainBundle] pathForResource:audio ofType:@"caf"];
    NSURL* url = [NSURL fileURLWithPath:path];
    NSData* data = [NSData dataWithContentsOfURL:url];
    storyAudio=[[AVAudioPlayer alloc] initWithData:data error:nil];
    storyAudio.numberOfLoops = 0;
    storyAudio.volume = 1.0;
    [storyAudio play];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    delegate = (Quest_of_MagicAppDelegate*)[[UIApplication sharedApplication] delegate];
    delegate.gameData = [[GameData alloc] init];
    gameData = delegate.gameData;
    
    [gameData playAudio:@"Dialogue Music"];
    gameData.theAudio.volume = 0.5;
    
    defaultStoryline = [UIImage imageNamed:@"storyline default.png"];
    [defaultStoryline retain];
    storylineImageView.image = defaultStoryline;
    //load the storyline and run animation with Next button.
    storyline4 = [[NSMutableArray alloc] initWithObjects:
                  [UIImage imageNamed:@"storyline1 0.png"],
                  [UIImage imageNamed:@"storyline1 1.png"],
                  [UIImage imageNamed:@"storyline1 2.png"],
                  [UIImage imageNamed:@"storyline1 3.png"],
                  [UIImage imageNamed:@"storyline1 4.png"], nil];
    storyline3 = [[NSMutableArray alloc] initWithObjects:
                  [UIImage imageNamed:@"storyline2 0.png"],
                  [UIImage imageNamed:@"storyline2 1.png"],
                  [UIImage imageNamed:@"storyline2 2.png"],
                  [UIImage imageNamed:@"storyline2 3.png"],
                  [UIImage imageNamed:@"storyline2 4.png"], nil];
    storyline2 = [[NSMutableArray alloc] initWithObjects:
                  [UIImage imageNamed:@"storyline3 0.png"],
                  [UIImage imageNamed:@"storyline3 1.png"],
                  [UIImage imageNamed:@"storyline3 2.png"],
                  [UIImage imageNamed:@"storyline3 3.png"],
                  [UIImage imageNamed:@"storyline3 4.png"], nil];
    storyline1 = [[NSMutableArray alloc] initWithObjects:
                  [UIImage imageNamed:@"storyline4 0.png"],
                  [UIImage imageNamed:@"storyline4 1.png"],
                  [UIImage imageNamed:@"storyline4 2.png"],
                  [UIImage imageNamed:@"storyline4 3.png"],
                  [UIImage imageNamed:@"storyline4 4.png"], nil];
}
- (void)firstStoryLine {
    animationNum = 1;
    [self playAudio:[NSString stringWithFormat:@"Intro%d", animationNum]];
    storylineImageView.image = [storyline1 lastObject];
    storylineImageView.animationImages = storyline1;
    storylineImageView.animationDuration = 0.4;
    storylineImageView.animationRepeatCount = 1;
    [storylineImageView startAnimating];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (NSMutableArray *)reversedArray:(NSMutableArray*)array {
    NSMutableArray *newArray = [NSMutableArray arrayWithCapacity:[array count]];
    NSEnumerator *enumerator = [array reverseObjectEnumerator];
    for (id element in enumerator) {
        [newArray addObject:element];
    }
    return newArray;
}

@end

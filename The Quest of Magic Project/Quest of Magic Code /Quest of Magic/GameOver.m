//
//  GameOver.m
//  Quest of Magic
//
//  Created by Matthew French on 5/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GameOver.h"
#import "Quest_of_MagicAppDelegate.h"
Quest_of_MagicAppDelegate *gameOverDelegate;

@implementation GameOver

- (IBAction)aww {
    UINavigationController* nav = [self navigationController];

    TitleScreen* titleScreen;
    
    for (UIViewController* controller in [nav viewControllers]) {
        if ([controller isMemberOfClass:[TitleScreen class]]) {
            titleScreen = (TitleScreen*)controller;
        }
    }
    
    [[self navigationController] popToViewController:titleScreen animated:NO];
    
    [gameData.theAudio stop];
    [gameData release];
    gameData = nil;
    gameOverDelegate.gameData = nil;
    
    [titleScreen runTitleAnimation];
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
    gameOverDelegate = (Quest_of_MagicAppDelegate*)[[UIApplication sharedApplication] delegate];
    gameData = gameOverDelegate.gameData;
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

@end

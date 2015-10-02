//
//  CharacterScreen.m
//  Quest of Magic
//
//  Created by Matthew French on 5/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CharacterScreen.h"
#import "Quest_of_MagicAppDelegate.h"
Quest_of_MagicAppDelegate *delegate;

@implementation CharacterScreen

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
    gameData = delegate.gameData;
    
    //Have character screen completely black then fade in after entering name
    self.view.alpha = 0.0;
    myAlertView = [[UIAlertView alloc] initWithTitle:@"Enter your name!" message:@" " delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    UITextField *myTextField = [[UITextField alloc] initWithFrame:CGRectMake(12.0, 35.0, 260.0, 25.0)];
    //[myTextField setBackgroundColor:[UIColor whiteColor]];
    [myTextField setTextColor:[UIColor whiteColor]];
    [myTextField setTextAlignment:UITextAlignmentCenter];
    [myTextField becomeFirstResponder];
    [myTextField setAutocorrectionType:UITextAutocorrectionTypeNo];
    [myAlertView addSubview:myTextField];
    [myTextField autorelease];
    [myTextField setDelegate:self];
    [myAlertView show];
    [myAlertView release];
     
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    [myAlertView dismissWithClickedButtonIndex:0 animated:YES];
    return NO;
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    
    //Pop up character selection.
    [UIView animateWithDuration:1.0 animations:^{self.view.alpha = 1.0;}];
    UITextField* text = [[alertView subviews] lastObject];
    gameData.playername = [NSString stringWithString:text.text];
    if ([gameData.playername length] == 0) {gameData.playername = @"Hero";}
    [gameData.playername retain];
     
}

- (IBAction)backFromCharacterView:(id)sender {
    
    //Pop view controller to the title view and run title animation
    
    [gameData.theAudio release];
    gameData.theAudio = nil;
    [delegate.gameData release];
    delegate.gameData = nil;
    gameData = nil;
    [UIView animateWithDuration:1.0 animations:^{self.view.alpha = 0.0;} completion:^(BOOL  completed){
        UINavigationController* nav = [self navigationController];
        
        TitleScreen* titleScreen;
        
        for (UIViewController* controller in [nav viewControllers]) {
            if ([controller isMemberOfClass:[TitleScreen class]]) {
                titleScreen = (TitleScreen*)controller;
            }
        }
        
        [[self navigationController] popToViewController:titleScreen animated:NO];
        
        [titleScreen runTitleAnimation];
    }];
}

//Choose character, create character profile, switch uiviewcontroller to game screen.
- (IBAction)humanMale:(id)sender {
    delegate.gameData.playersprite = @"HumanM1.gif";
    delegate.gameData.playerrace = @"Human";
    delegate.gameData.playergender = @"Male";
    [self switchToGameController];}
- (IBAction)humanFemale:(id)sender {
    delegate.gameData.playersprite = @"HumanF5.gif";
    delegate.gameData.playerrace = @"Human";
    delegate.gameData.playergender = @"Female";
    [self switchToGameController];}
- (IBAction)elfMale:(id)sender {
    delegate.gameData.playersprite = @"ElfM6.gif";
    delegate.gameData.playerrace = @"Elf";
    delegate.gameData.playergender = @"Male";
    [self switchToGameController];}
- (IBAction)elfFemale:(id)sender {
    delegate.gameData.playersprite = @"ElfF6.gif";
    delegate.gameData.playerrace = @"Elf";
    delegate.gameData.playergender = @"Female";
    [self switchToGameController];}
- (IBAction)dwarfMale:(id)sender {
    delegate.gameData.playersprite = @"DwarfM1.gif";
    delegate.gameData.playerrace = @"Dwarf";
    delegate.gameData.playergender = @"Male";
    [self switchToGameController];}
- (IBAction)dwarfFemale:(id)sender {
    delegate.gameData.playersprite = @"DwarfM4.gif";
    delegate.gameData.playerrace = @"Dwarf";
    delegate.gameData.playergender = @"Male";
    [self switchToGameController];}

- (void)switchToGameController {
    
    if ([delegate.gameData.playerrace isEqualToString:@"Human"]) {
        delegate.gameData.gridY = 4;
        delegate.gameData.gridX = 4;
        delegate.gameData.playerY = delegate.gameData.gridY * 44;
        delegate.gameData.playerY = delegate.gameData.playerY - 39;
        delegate.gameData.playerX = delegate.gameData.gridX * 44;
        delegate.gameData.playerX = delegate.gameData.playerX - 39;
        delegate.gameData.moveY = delegate.gameData.gridY;
        delegate.gameData.moveX = delegate.gameData.gridX;
        delegate.gameData.card = 20;
    }
    if ([delegate.gameData.playerrace isEqualToString:@"Elf"]) {
        delegate.gameData.gridY = 4;
        delegate.gameData.gridX = 4;
        delegate.gameData.playerY = delegate.gameData.gridY * 44;
        delegate.gameData.playerY = delegate.gameData.playerY - 39;
        delegate.gameData.playerX = delegate.gameData.gridX * 44;
        delegate.gameData.playerX = delegate.gameData.playerX - 39;
        delegate.gameData.moveY = delegate.gameData.gridY;
        delegate.gameData.moveX = delegate.gameData.gridX;
        delegate.gameData.card = 37;
    }
    if ([delegate.gameData.playerrace isEqualToString:@"Dwarf"]) {
        delegate.gameData.gridY = 4;
        delegate.gameData.gridX = 4;
        delegate.gameData.playerY = delegate.gameData.gridY * 44;
        delegate.gameData.playerY = delegate.gameData.playerY - 39;
        delegate.gameData.playerX = delegate.gameData.gridX * 44;
        delegate.gameData.playerX = delegate.gameData.playerX - 39; //39
        delegate.gameData.moveY = delegate.gameData.gridY;
        delegate.gameData.moveX = delegate.gameData.gridX;
        delegate.gameData.card = 30;
    }
    
    [gameData.theAudio release];
    gameData.theAudio = nil;
    
    [gameData playSoundEffect:@"LVup"];

    //Final variables
    if ([delegate.gameData.playerrace isEqualToString:@"Gnome"]) {
        int gnomeitem = (rand()%2)+1;
        if (gnomeitem == 1) delegate.gameData.playertrinket = @"Ring of Lesser Healing";
        if (gnomeitem == 2) delegate.gameData.playertrinket = @"Cloak of Distraction";
    }
    
    //Play surface music
    [gameData playAudio:@"Surface Music"];
    
    //Switch to GameScreen
    GameScreen *controller = [[GameScreen alloc] initWithNibName:@"GameScreen" bundle:nil];
    
    [[self navigationController] pushViewController:controller animated:YES];
    
    [controller goToCard:delegate.gameData.card];
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

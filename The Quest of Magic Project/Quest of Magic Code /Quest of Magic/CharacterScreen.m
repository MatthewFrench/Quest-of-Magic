//
//  CharacterScreen.m
//  Quest of Magic
//
//  Created by Matthew French on 5/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CharacterScreen.h"
#import "Quest_of_MagicAppDelegate.h"
Quest_of_MagicAppDelegate *characterDelegate;

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
    characterDelegate = (Quest_of_MagicAppDelegate*)[[UIApplication sharedApplication] delegate];
    gameData = characterDelegate.gameData;
    
    //Have character screen completely black then fade in after entering name
    self.view.alpha = 0.0;
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Enter your name!" message:@"" preferredStyle:UIAlertControllerStyleAlert];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Name";
        [textField setAutocorrectionType:UITextAutocorrectionTypeNo];
        [textField becomeFirstResponder];
        //[myTextField setTextColor:[UIColor whiteColor]];
    }];
    UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //compare the current password and do action here
        [self dismissNameAlert:[[alertController textFields][0] text]];
    }];
    [alertController addAction:confirmAction];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [self dismissNameAlert:[[alertController textFields][0] text]];
    }];
    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:YES completion:nil];
}
/*
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    [myAlertView dismissWithClickedButtonIndex:0 animated:YES];
    return NO;
}
 */

- (void)dismissNameAlert:(NSString*)name {
    //Pop up character selection.
    [UIView animateWithDuration:1.0 animations:^{self.view.alpha = 1.0;}];
    gameData.playername = name;
    if ([gameData.playername length] == 0) {gameData.playername = @"Hero";}
    [gameData.playername retain];
}

- (IBAction)backFromCharacterView:(id)sender {
    
    //Pop view controller to the title view and run title animation
    
    [gameData.theAudio release];
    gameData.theAudio = nil;
    [characterDelegate.gameData release];
    characterDelegate.gameData = nil;
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
    characterDelegate.gameData.playersprite = @"HumanM1.gif";
    characterDelegate.gameData.playerrace = @"Human";
    characterDelegate.gameData.playergender = @"Male";
    [self switchToGameController];}
- (IBAction)humanFemale:(id)sender {
    characterDelegate.gameData.playersprite = @"HumanF5.gif";
    characterDelegate.gameData.playerrace = @"Human";
    characterDelegate.gameData.playergender = @"Female";
    [self switchToGameController];}
- (IBAction)elfMale:(id)sender {
    characterDelegate.gameData.playersprite = @"ElfM6.gif";
    characterDelegate.gameData.playerrace = @"Elf";
    characterDelegate.gameData.playergender = @"Male";
    [self switchToGameController];}
- (IBAction)elfFemale:(id)sender {
    characterDelegate.gameData.playersprite = @"ElfF6.gif";
    characterDelegate.gameData.playerrace = @"Elf";
    characterDelegate.gameData.playergender = @"Female";
    [self switchToGameController];}
- (IBAction)dwarfMale:(id)sender {
    characterDelegate.gameData.playersprite = @"DwarfM1.gif";
    characterDelegate.gameData.playerrace = @"Dwarf";
    characterDelegate.gameData.playergender = @"Male";
    [self switchToGameController];}
- (IBAction)dwarfFemale:(id)sender {
    characterDelegate.gameData.playersprite = @"DwarfM4.gif";
    characterDelegate.gameData.playerrace = @"Dwarf";
    characterDelegate.gameData.playergender = @"Male";
    [self switchToGameController];}

- (void)switchToGameController {
    
    if ([characterDelegate.gameData.playerrace isEqualToString:@"Human"]) {
        characterDelegate.gameData.gridY = 4;
        characterDelegate.gameData.gridX = 4;
        characterDelegate.gameData.playerY = characterDelegate.gameData.gridY * 44;
        characterDelegate.gameData.playerY = characterDelegate.gameData.playerY - 39;
        characterDelegate.gameData.playerX = characterDelegate.gameData.gridX * 44;
        characterDelegate.gameData.playerX = characterDelegate.gameData.playerX - 39;
        characterDelegate.gameData.moveY = characterDelegate.gameData.gridY;
        characterDelegate.gameData.moveX = characterDelegate.gameData.gridX;
        characterDelegate.gameData.card = 20;
    }
    if ([characterDelegate.gameData.playerrace isEqualToString:@"Elf"]) {
        characterDelegate.gameData.gridY = 4;
        characterDelegate.gameData.gridX = 4;
        characterDelegate.gameData.playerY = characterDelegate.gameData.gridY * 44;
        characterDelegate.gameData.playerY = characterDelegate.gameData.playerY - 39;
        characterDelegate.gameData.playerX = characterDelegate.gameData.gridX * 44;
        characterDelegate.gameData.playerX = characterDelegate.gameData.playerX - 39;
        characterDelegate.gameData.moveY = characterDelegate.gameData.gridY;
        characterDelegate.gameData.moveX = characterDelegate.gameData.gridX;
        characterDelegate.gameData.card = 37;
    }
    if ([characterDelegate.gameData.playerrace isEqualToString:@"Dwarf"]) {
        characterDelegate.gameData.gridY = 4;
        characterDelegate.gameData.gridX = 4;
        characterDelegate.gameData.playerY = characterDelegate.gameData.gridY * 44;
        characterDelegate.gameData.playerY = characterDelegate.gameData.playerY - 39;
        characterDelegate.gameData.playerX = characterDelegate.gameData.gridX * 44;
        characterDelegate.gameData.playerX = characterDelegate.gameData.playerX - 39; //39
        characterDelegate.gameData.moveY = characterDelegate.gameData.gridY;
        characterDelegate.gameData.moveX = characterDelegate.gameData.gridX;
        characterDelegate.gameData.card = 30;
    }
    
    [gameData.theAudio release];
    gameData.theAudio = nil;
    
    [gameData playSoundEffect:@"LVup"];

    //Final variables
    if ([characterDelegate.gameData.playerrace isEqualToString:@"Gnome"]) {
        int gnomeitem = (rand()%2)+1;
        if (gnomeitem == 1) characterDelegate.gameData.playertrinket = @"Ring of Lesser Healing";
        if (gnomeitem == 2) characterDelegate.gameData.playertrinket = @"Cloak of Distraction";
    }
    
    //Play surface music
    [gameData playAudio:@"Surface Music"];
    
    //Switch to GameScreen
    GameScreen *controller = [[GameScreen alloc] initWithNibName:@"GameScreen" bundle:nil];
    
    [[self navigationController] pushViewController:controller animated:YES];
    //Force the instantiation
    [controller view];
    //[controller awakeFromNib];
    [controller loadViewIfNeeded];
    controller.view.alpha = 1.0;
    [controller goToCard:characterDelegate.gameData.card];
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

//
//  GameMenu.m
//  Quest of Magic
//
//  Created by Matthew French on 5/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GameMenu.h"
#import "Quest_of_MagicAppDelegate.h"
Quest_of_MagicAppDelegate *gameMenuDelegate;

@implementation GameMenu


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
    gameMenuDelegate = (Quest_of_MagicAppDelegate*)[[UIApplication sharedApplication] delegate];
    gameData = gameMenuDelegate.gameData;
    // Do any additional setup after loading the view from its nib.
    if ([gameData.playerrace isEqualToString: @"Human"]) [backgroundImageView setImage:[UIImage imageNamed:@"Map 202.png"]];
    if ([gameData.playerrace isEqualToString: @"Elf"]) [backgroundImageView setImage:[UIImage imageNamed:@"Map 201.png"]];
    if ([gameData.playerrace isEqualToString: @"Dwarf"]) [backgroundImageView setImage:[UIImage imageNamed:@"Map 200.png"]];
    if ([gameData.playerrace isEqualToString: @"Gnome"]) [backgroundImageView setImage:[UIImage imageNamed:@"Map 203.png"]];
    [playerImageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"L%@",gameData.playersprite]]];
    [self updateStats];
}
- (void)updateStats {
    //     Prints the player's stats.
    [name setText:gameData.playername];
    [race setText:gameData.playerrace];
    [gender setText:gameData.playergender];
    [hp setText:[NSString stringWithFormat:@"%d/%d",gameData.playerHP,gameData.maxHP]];
    [level setText:[NSString stringWithFormat:@"%d",gameData.playerLV]];
    [expNeeded setText:[NSString stringWithFormat:@"%d",gameData.playerEXP]];
    [gold setText:[NSString stringWithFormat:@"%d",gameData.gold]];
    [weapon setText:gameData.playerweapon];
    [armor setText:gameData.playerarmor];
    [trinket setText:gameData.playertrinket];
    [potions setText:[NSString stringWithFormat:@"%d",gameData.ITEMhealingpotions]];
}
- (IBAction)back {
    UINavigationController* nav = [self navigationController];
    
    GameScreen* gameScreen;
    
    for (UIViewController* controller in [nav viewControllers]) {
        if ([controller isMemberOfClass:[GameScreen class]]) {
            gameScreen = (GameScreen*)controller;
        }
    }
    
    [[self navigationController] popToViewController:gameScreen animated:YES];
}
- (IBAction)drinkPotion {
    if (gameData.playerHP != gameData.maxHP) {
        if (gameData.ITEMhealingpotions > 0) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Drink a potion?" message:nil delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
            alert.tag = 2;
            [alert show];
            [alert release];
        } else {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You don't have any Potions." message:@"" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
            [alert show];
            [alert release];
        }
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You have full health." message:@"" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
        [alert release];
    }
    [self updateStats];
}
- (IBAction)mainMenu {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Are you sure you want to quit to the main menu?" message:@"You will lose all unsaved progress." delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
    alert.tag = 1;
    [alert show];
    [alert release];
}
- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1 && alertView.tag == 1) {
        if ([gameData theAudio]) [gameData.theAudio stop];
        
        UINavigationController* nav = [self navigationController];
        
        TitleScreen* titleScreen;
        
        for (UIViewController* controller in [nav viewControllers]) {
            if ([controller isMemberOfClass:[TitleScreen class]]) {
                titleScreen = (TitleScreen*)controller;
            }
        }
        
        [[self navigationController] popToViewController:titleScreen animated:NO];
        
        [titleScreen runTitleAnimation];
    } else if (buttonIndex == 1 && alertView.tag == 2) {
        gameData.ITEMhealingpotions = gameData.ITEMhealingpotions - 1;
        int healamount = (rand()%5)+1;
        healamount = healamount + 11;
        if ([gameData.playertrinket isEqualToString: @"Ring of Lesser Healing"]) healamount = healamount + 4;
        if ([gameData.playertrinket isEqualToString: @"Ring of Greater Healing"]) healamount = healamount + 7;
        gameData.playerHP = gameData.playerHP + healamount;
        if (gameData.playerHP > gameData.maxHP) gameData.playerHP = gameData.maxHP;
    }
    [self updateStats];
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

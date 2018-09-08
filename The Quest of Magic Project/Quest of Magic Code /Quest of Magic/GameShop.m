//
//  GameShop.m
//  Quest of Magic
//
//  Created by Matthew French on 5/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GameShop.h"
#import "Quest_of_MagicAppDelegate.h"
Quest_of_MagicAppDelegate *gameShopDelegate;

@implementation GameShop

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
- (void)loadWeaponShop {
    type = 1;
}
- (void)loadArmorShop {
    type = 2;
}
- (void)loadSpecialShop {
    type = 3;
}
//if ([self weaponRank:@"Shiny Dagger"] > [self weaponRank:gameData.playerweapon]) {} else {
//[self print:@"You already own a weapon of greater or equal value." message:nil];
//}
- (IBAction)buyItem1 {
    if (type == 1) {
        if ([self weaponRank:@"Shiny Dagger"] > [self weaponRank:gameData.playerweapon]) {
            if (gameData.playerLV > 0) {
                if (gameData.gold > 24) {
                    gameData.playerweapon = @"Shiny Dagger";
                    gameData.gold = gameData.gold - 25;
                    [self print:[NSString stringWithFormat:@"You purchase a %@ for 25 gold.",gameData.playerweapon] message:nil];
                    [gameData playSoundEffect:@"LVup"];
                    [self updateStats];
                } else {
                    [self print:@"You don't have enough gold for that item." message:nil];
                }
            }
        } else {
            [self print:@"You already own a weapon of greater or equal value." message:nil];
        }
    }
    if (type == 2) {
        if ([self armorRank:@"Cloth Vest"] > [self armorRank:gameData.playerarmor]) {
            if (gameData.playerLV > 0) {
                if (gameData.gold > 24) {
                    gameData.playerarmor = @"Cloth Vest";
                    gameData.gold = gameData.gold - 25;
                    [self print:[NSString stringWithFormat:@"You purchase a %@ for 25 gold.",gameData.playerarmor] message:nil];
                    [gameData playSoundEffect:@"LVup"];
                    [self updateStats];
                } else {
                    [self print:@"You don't have enough gold for that item." message:nil];
                }
            }
        } else {
            [self print:@"You already own armor of greater or equal value." message:nil];
        }
    }
    if (type == 3) {
        if ([self weaponRank:@"Vorpal Sword"] > [self weaponRank:gameData.playerweapon]) {
            if (gameData.playerLV > 5) {
                if (gameData.gold > 714) {
                    gameData.playerweapon = @"Vorpal Sword";
                    gameData.gold = gameData.gold - 715;
                    [self print:[NSString stringWithFormat:@"You purchase a %@ for 715 gold.",gameData.playerweapon] message:nil];
                    [gameData playSoundEffect:@"LVup"];
                    [self updateStats];
                } else {
                    [self print:@"You don't have enough gold for that item." message:nil];
                }
            } else {
                [self print:@"You're not high enough level to use that weapon."  message:nil];
            }
        } else {
            [self print:@"You already own a weapon of greater or equal value." message:nil];
        }
    }
}
- (IBAction)buyItem2 {
    if (type == 1) {
        if ([self weaponRank:@"Battle Axe"] > [self weaponRank:gameData.playerweapon]) {
            if (gameData.playerLV > 1) {
                if (gameData.gold > 69) {
                    gameData.playerweapon = @"Battle Axe";
                    gameData.gold = gameData.gold - 70;
                    [self print:[NSString stringWithFormat:@"You purchase a %@ for 70 gold.",gameData.playerweapon] message:nil];
                    [gameData playSoundEffect:@"LVup"];
                    [self updateStats];
                } else {
                    [self print:@"You don't have enough gold for that item." message:nil];
                }
            } else {
                [self print:@"You're not high enough level to use that weapon."  message:nil];
            }
        } else {
            [self print:@"You already own a weapon of greater or equal value." message:nil];
        }
    }
    if (type == 2) {
        if ([self armorRank:@"Leather Cuirass"] > [self armorRank:gameData.playerarmor]) {
            if (gameData.playerLV > 1) {
                if (gameData.gold > 69) {
                    gameData.playerarmor = @"Leather Cuirass";
                    gameData.gold = gameData.gold - 70;
                    [self print:[NSString stringWithFormat:@"You purchase a %@ for 70 gold.",gameData.playerarmor] message:nil];
                    [gameData playSoundEffect:@"LVup"];
                    [self updateStats];
                } else {
                    [self print:@"You don't have enough gold for that item." message:nil];
                }
            } else {
                [self print:@"You're not high enough level to use that armor."  message:nil];
            }
        } else {
            [self print:@"You already own armor of greater or equal value." message:nil];
        }
    }
    if (type == 3) {
        if ([self armorRank:@"Aegis Robe"] > [self armorRank:gameData.playerarmor]) {
            if (gameData.playerLV > 5) {
                if (gameData.gold > 714) {
                    gameData.playerarmor = @"Aegis Robe";
                    gameData.gold = gameData.gold - 715;
                    [self print:[NSString stringWithFormat:@"You purchase a %@ for 715 gold.",gameData.playerarmor] message:nil];
                    [gameData playSoundEffect:@"LVup"];
                    [self updateStats];
                } else {
                    [self print:@"You don't have enough gold for that item." message:nil];
                }
            } else {
                [self print:@"You're not high enough level to use that armor."  message:nil];
            }
        } else {
            [self print:@"You already own armor of greater or equal value." message:nil];
        }
    }
}
- (IBAction)buyItem3 {
    if (type == 1) {
        if ([self weaponRank:@"Silver Spear"] > [self weaponRank:gameData.playerweapon]) {
            if (gameData.playerLV > 2) {
                if (gameData.gold > 144) {
                    gameData.playerweapon = @"Silver Spear";
                    gameData.gold = gameData.gold - 145;
                    [self print:[NSString stringWithFormat:@"You purchase a %@ for 145 gold.",gameData.playerweapon] message:nil];
                    [gameData playSoundEffect:@"LVup"];
                    [self updateStats];
                } else {
                    [self print:@"You don't have enough gold for that item." message:nil];
                }
            } else {
                [self print:@"You're not high enough level to use that weapon."  message:nil];
            }
        } else {
            [self print:@"You already own a weapon of greater or equal value." message:nil];
        }
    }
    if (type == 2) {
        if ([self armorRank:@"Battle Raiment"] > [self armorRank:gameData.playerarmor]) {
            if (gameData.playerLV > 2) {
                if (gameData.gold > 144) {
                    gameData.playerarmor = @"Battle Raiment";
                    gameData.gold = gameData.gold - 145;
                    [self print:[NSString stringWithFormat:@"You purchase a %@ for 145 gold.",gameData.playerarmor] message:nil];
                    [gameData playSoundEffect:@"LVup"];
                    [self updateStats];
                } else {
                    [self print:@"You don't have enough gold for that item." message:nil];
                }
            } else {
                [self print:@"You're not high enough level to use that armor."  message:nil];
            }
        } else {
            [self print:@"You already own armor of greater or equal value." message:nil];
        }
    }
}
- (IBAction)buyItem4 {
    if (type == 1) {
        if ([self weaponRank:@"War Hammer"] > [self weaponRank:gameData.playerweapon]) {
            if (gameData.playerLV > 3) {
                if (gameData.gold > 264) {
                    gameData.playerweapon = @"War Hammer";
                    gameData.gold = gameData.gold - 265;
                    [self print:[NSString stringWithFormat:@"You purchase a %@ for 265 gold.",gameData.playerweapon] message:nil];
                    [gameData playSoundEffect:@"LVup"];
                    [self updateStats];
                } else {
                    [self print:@"You don't have enough gold for that item." message:nil];
                }
            } else {
                [self print:@"You're not high enough level to use that weapon."  message:nil];
            }
        } else {
            [self print:@"You already own a weapon of greater or equal value." message:nil];
        }
    }
    if (type == 2) {
        if ([self armorRank:@"Chain Mail"] > [self armorRank:gameData.playerarmor]) {
            if (gameData.playerLV > 3) {
                if (gameData.gold > 264) {
                    gameData.playerarmor = @"Chain Mail";
                    gameData.gold = gameData.gold - 265;
                    [self print:[NSString stringWithFormat:@"You purchase a %@ for 265 gold.",gameData.playerarmor] message:nil];
                    [gameData playSoundEffect:@"LVup"];
                    [self updateStats];
                } else {
                    [self print:@"You don't have enough gold for that item." message:nil];
                }
            } else {
                [self print:@"You're not high enough level to use that armor."  message:nil];
            }
        } else {
            [self print:@"You already own armor of greater or equal value." message:nil];
        }
    }
}
- (IBAction)buyItem5 {
    if (type == 1) {
        if ([self weaponRank:@"Magic Sword"] > [self weaponRank:gameData.playerweapon]) {
            if (gameData.playerLV > 4) {
                if (gameData.gold > 419) {
                    gameData.playerweapon = @"Magic Sword";
                    gameData.gold = gameData.gold - 420;
                    [self print:[NSString stringWithFormat:@"You purchase a %@ for 420 gold.",gameData.playerweapon] message:nil];
                    [gameData playSoundEffect:@"LVup"];
                    [self updateStats];
                } else {
                    [self print:@"You don't have enough gold for that item." message:nil];
                }
            } else {
                [self print:@"You're not high enough level to use that weapon."  message:nil];
            }
        } else {
            [self print:@"You already own a weapon of greater or equal value." message:nil];
        }
    }
    if (type == 2) {
        if ([self armorRank:@"Enchanted Plate"] > [self armorRank:gameData.playerarmor]) {
            if (gameData.playerLV > 4) {
                if (gameData.gold > 419) {
                    gameData.playerarmor = @"Enchanted Plate";
                    gameData.gold = gameData.gold - 420;
                    [self print:[NSString stringWithFormat:@"You purchase a %@ for 420 gold.",gameData.playerarmor] message:nil];
                    [gameData playSoundEffect:@"LVup"];
                    [self updateStats];
                } else {
                    [self print:@"You don't have enough gold for that item." message:nil];
                }
            } else {
                [self print:@"You're not high enough level to use that armor."  message:nil];
            }
        } else {
            [self print:@"You already own armor of greater or equal value." message:nil];
        }
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    gameShopDelegate = (Quest_of_MagicAppDelegate*)[[UIApplication sharedApplication] delegate];
    gameData = gameShopDelegate.gameData;
    
    [self updateStats];
    if (type == 1) {
        [item1 setImage:[UIImage imageNamed:@"BUTTON Shiny Dagger.gif"] forState:UIControlStateNormal];
        itemLabel1.text = @"$25";
        [item2 setImage:[UIImage imageNamed:@"BUTTON Battle Axe.gif"] forState:UIControlStateNormal];
        itemLabel2.text = @"$70";
        [item3 setImage:[UIImage imageNamed:@"BUTTON Silver Spear.gif"] forState:UIControlStateNormal];
        itemLabel3.text = @"$145";
        [item4 setImage:[UIImage imageNamed:@"BUTTON War Hammer.gif"] forState:UIControlStateNormal];
        itemLabel4.text = @"$265";
        [item5 setImage:[UIImage imageNamed:@"BUTTON Magic Sword.gif"] forState:UIControlStateNormal];
        itemLabel5.text = @"$420";
    }
    if (type == 2) {
        [item1 setImage:[UIImage imageNamed:@"BUTTON Cloth Vest.gif"] forState:UIControlStateNormal];
        itemLabel1.text = @"$25";
        [item2 setImage:[UIImage imageNamed:@"BUTTON Leather Cuirass.gif"] forState:UIControlStateNormal];
        itemLabel2.text = @"$70";
        [item3 setImage:[UIImage imageNamed:@"BUTTON Battle Raiment.gif"] forState:UIControlStateNormal];
        itemLabel3.text = @"$145";
        [item4 setImage:[UIImage imageNamed:@"BUTTON Chain Mail.gif"] forState:UIControlStateNormal];
        itemLabel4.text = @"$265";
        [item5 setImage:[UIImage imageNamed:@"BUTTON Enchanted Plate.gif"] forState:UIControlStateNormal];
        itemLabel5.text = @"$420";
    }
    if (type == 3) {
        [item1 setImage:[UIImage imageNamed:@"BUTTON Vorpal Sword.gif"] forState:UIControlStateNormal];
        itemLabel1.text = @"$715";
        [item2 setImage:[UIImage imageNamed:@"BUTTON Aegis Robe.gif"] forState:UIControlStateNormal];
        itemLabel2.text = @"$715";
        itemLabel3.text = @"";
        itemLabel4.text = @"";
        itemLabel5.text = @"";
    }
}
- (int)weaponRank:(NSString*)w {
    if ([w isEqualToString: @"Hands"]) return 0;
    if ([w isEqualToString: @"Shiny Dagger"]) return 1;
    if ([w isEqualToString: @"Battle Axe"]) return 2;
    if ([w isEqualToString: @"Silver Spear"]) return 3;
    if ([w isEqualToString: @"War Hammer"]) return 4;
    if ([w isEqualToString: @"Magic Sword"]) return 5;
    if ([w isEqualToString: @"Vorpal Sword"]) return 6;
    return 0;
}
- (int)armorRank:(NSString*)a {
    if ([a isEqualToString: @"None"]) return 0;
    if ([a isEqualToString: @"Cloth Vest"]) return 1;
    if ([a isEqualToString: @"Leather Cuirass"]) return 2;
    if ([a isEqualToString: @"Battle Raiment"]) return 3;
    if ([a isEqualToString: @"Chain Mail"]) return 4;
    if ([a isEqualToString: @"Enchanted Plate"]) return 5;
    if ([a isEqualToString: @"Aegis Robe"]) return 6;
    return 0;
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
    
    if (type  < 3) {
    
    int shopspeechnum = (rand()%3)+1;
    NSString* shopspeech;
    if (shopspeechnum == 1) shopspeech = @"Come again";
    if (shopspeechnum == 2) shopspeech = @"Pleasure doing business with you";
    if (shopspeechnum == 3) shopspeech = @"Safe travels";
    if ([gameData.playerrace isEqualToString: @"Human"]) {
        if ([gameData.playergender isEqualToString: @"Male"]) [self print:@"Human Trader" message:[NSString stringWithFormat:@"%@ sir.",shopspeech]];
        if ([gameData.playergender isEqualToString: @"Female"]) [self print:@"Human Trader" message: [NSString stringWithFormat:@"%@ miss.",shopspeech]];
    }
    if ([gameData.playerrace isEqualToString: @"Elf"]) {
        if ([gameData.playergender isEqualToString: @"Male"]) [self print:@"Human Trader" message: [NSString stringWithFormat:@"%@ master Elf.",shopspeech]];
        if ([gameData.playergender isEqualToString: @"Female"]) [self print:@"Human Trader" message: [NSString stringWithFormat:@"%@ lady Elf.",shopspeech]];
    }
    if ([gameData.playerrace isEqualToString: @"Dwarf"]) [self print:@"Human Trader" message: [NSString stringWithFormat:@"%@ master Dwarf.",shopspeech]];
    if ([gameData.playerrace isEqualToString: @"Gnome"]) [self print:@"Human Trader" message: [NSString stringWithFormat:@"%@ master Gnome.",shopspeech]];
    }
}
- (void)print:(NSString*)title message:(NSString*)message {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alert show];
    [alert release];
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

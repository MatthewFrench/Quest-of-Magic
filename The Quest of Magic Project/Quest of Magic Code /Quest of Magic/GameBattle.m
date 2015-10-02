//
//  GameBattle.m
//  Quest of Magic
//
//  Created by Matthew French on 5/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GameBattle.h"
#import "Quest_of_MagicAppDelegate.h"
Quest_of_MagicAppDelegate *delegate;

@implementation GameBattle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc {
    [super dealloc];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)blockInteraction {
    interactionBlockCount += 1;
    [self.view setUserInteractionEnabled:FALSE];
}
- (void)unblockInteraction {
    interactionBlockCount -= 1;
    if (interactionBlockCount <= 0) {
        interactionBlockCount = 0;
        [self.view setUserInteractionEnabled:TRUE];
    }
}

- (void)updateHealthBars{
    [self updatePlayerHealthBar];
    [self updateEnemyHealthBar];
}
- (void)updatePlayerHealthBar {
    playerHealthView.center = CGPointMake(player15.center.x, BplayerY - 20);
    float ph = (((float)gameData.playerHP)/gameData.maxHP);
    if (ph < 0) {ph = 0;}
    playerHealthBar.frame = CGRectMake(1, 1, floor(58 * ph), 3);
}
- (void)updateEnemyHealthBar {
    float eh = (((float)enemyHP)/enemymaxHP);
    if (eh < 0) {eh = 0;}
    if ([enemyname isEqualToString: @"Black Dragon"]) {
        enemyHealthView.center = CGPointMake(npc14.center.x+20.5, BenemyY - 20);
        enemyHealthBar.frame = CGRectMake(1, 1, floor(58*1.8 * eh), 3);
    } else {
        enemyHealthView.center = CGPointMake(npc14.center.x, BenemyY - 20);
        enemyHealthBar.frame = CGRectMake(1, 1, floor(58 * eh), 3);
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    delegate = (Quest_of_MagicAppDelegate*)[[UIApplication sharedApplication] delegate];
    gameData = delegate.gameData;
    
    [potionButton setTitle:[NSString stringWithFormat:@"Potion(%d)", gameData.ITEMhealingpotions] forState:UIControlStateNormal];
    
    battleText = [[NSMutableString alloc] init];
    specialText = [[NSMutableString alloc] init];
    
    [self.view addSubview: exitView];
    
    playerLbl.adjustsFontSizeToFitWidth = YES;
    enemyLbl.adjustsFontSizeToFitWidth = YES;
    
    [self setUpBattle];
}

- (void)updateStats {
    textView.text = @"";
    playerLbl.text = [NSString stringWithFormat:@"%@ HP: %d / %d",gameData.playername,gameData.playerHP,gameData.maxHP];
    textView.text = @"";
    enemyLbl.text = [NSString stringWithFormat:@"%@ HP: %d / %d",enemyname,enemyHP,enemymaxHP];
    if (playerhitalert == 1) [self print:[NSString stringWithFormat:@"You hit the enemy for %d damage!",playerhit]];
    if (playermissalert == 1) [self print:@"Your attack misses the enemy."];
    if (vampalert == 1) [self print:[NSString stringWithFormat:@"You vampirize %d HP!",vampamount]];
    if (vampfailedalert == 1) [self print:@"You fail to vampirize any HP."];
    if (healalert == 1) [self print:[NSString stringWithFormat:@"You restore %d HP. You have %d Potions left.",healamount,gameData.ITEMhealingpotions]];
    if (nopotionsalert == 1) [self print:@"You don't have any Potions."];
    if (escapealert == 1) [self print:@"You couldn't escape..."];
    if (enemyhitalert == 1) [self print:[NSString stringWithFormat:@"The enemy hits you for %d damage!",enemyhit]];
    if (enemymissalert == 1) [self print:@"The enemy's attack misses you."];
    if (enemystealalert == 1) [self print:[NSString stringWithFormat:@"The enemy steals %d gold from you!",stealamount]];
    if (enemyhealalert == 1) [self print:[NSString stringWithFormat:@"The enemy casts Heal Wounds and recovers %d HP.",enemyhealamount]];
    [self print:@""];
    
    [self print:battleText];
    
    [self print:specialText];
    
    [self print:@""];
    [self print:@""];
    [self print:@""];
    [self print:@""];
    [self print:@""];
    [self print:@""];
    [self print:@""];
    [self print:@""];
    [self print:@""];
    [self print:@""];
    [self print:@""];
    [self print:@""];
    [self print:@""];
}

- (IBAction)attackButton {
    [battleText setString:@""];
    playerattackalert = 1;
    
    [self updateSprite:player15 x:BplayerX y:BplayerY];
    [self updateSprite:npc14 x:BenemyX y:BenemyY];
    [self updateHealthBars];
    
    //     This is where the computer checks which weapon the player has equipped. Edit these lines to set the
    //     names and strength of all the weapons in your game.
    
    int playerWC = (rand()%100)+1;
    playerWC = playerWC + 10;
    if ([gameData.playerweapon isEqualToString: @"Hands"])  playerWC = playerWC + 20;
    if ([gameData.playerweapon isEqualToString: @"Shiny Dagger"])  playerWC = playerWC + 35;
    if ([gameData.playerweapon isEqualToString: @"Battle Axe"])  playerWC = playerWC + 50;
    if ([gameData.playerweapon isEqualToString: @"Silver Spear"])  playerWC = playerWC + 65;
    if ([gameData.playerweapon isEqualToString: @"War Hammer"])  playerWC = playerWC + 80;
    if ([gameData.playerweapon isEqualToString: @"Magic Sword"])  playerWC = playerWC + 95;
    if ([gameData.playerweapon isEqualToString: @"Vorpal Sword"])  playerWC = playerWC + 110;
    
    if ([gameData.playertrinket isEqualToString: @"Gauntlets of Rage"])  playerWC = playerWC + 5;
    int enemyAC;
    if ([enemyname isEqualToString: @"Large Rat"])  enemyAC = 0;
    if ([enemyname isEqualToString: @"Shadow Skulker"])  enemyAC = 0;
    if ([enemyname isEqualToString: @"Goblin Scavenger"])  enemyAC = 0;
    if ([enemyname isEqualToString: @"Giant Rat"])  enemyAC = 15;
    if ([enemyname isEqualToString: @"Goblin Pickpocket"])  enemyAC = 15;
    if ([enemyname isEqualToString: @"Goblin Warrior"])  enemyAC = 20;
    if ([enemyname isEqualToString: @"Goblin Shaman"])  enemyAC = 25;
    if ([enemyname isEqualToString: @"Bugbear"])  enemyAC = 40;
    if ([enemyname isEqualToString: @"Giant Shadow Skulker"])  enemyAC = 30;
    if ([enemyname isEqualToString: @"Orc Scout"])  enemyAC = 30;
    if ([enemyname isEqualToString: @"Orc Bone Crusher"])  enemyAC = 35;
    if ([enemyname isEqualToString: @"Orc Champion"])  enemyAC = 40;
    if ([enemyname isEqualToString: @"Air Elemental"])  enemyAC = 40;
    if ([enemyname isEqualToString: @"Ice Elemental"])  enemyAC = 40;
    if ([enemyname isEqualToString: @"Mimic"])  enemyAC = 45;
    if ([enemyname isEqualToString: @"Imp Shadow Claw"])  enemyAC = 40;
    if ([enemyname isEqualToString: @"Imp Spell Slinger"])  enemyAC = 40;
    if ([enemyname isEqualToString: @"Imp Demon Fang"])  enemyAC = 45;
    if ([enemyname isEqualToString: @"Clay Golem"])  enemyAC = 50;
    if ([enemyname isEqualToString: @"Beholder"])  enemyAC = 65;
    if ([enemyname isEqualToString: @"Duergar Gloom Shifter"])  enemyAC = 55;
    if ([enemyname isEqualToString: @"Duergar Stone Melder"])  enemyAC = 55;
    if ([enemyname isEqualToString: @"Stone Golem"])  enemyAC = 60;
    if ([enemyname isEqualToString: @"Gargoyle"])  enemyAC = 65;
    if ([enemyname isEqualToString: @"Doppelganger"])  enemyAC = 70;
    if ([enemyname isEqualToString: @"Drow Dread Soldier"])  enemyAC = 70;
    if ([enemyname isEqualToString: @"Drow Doom Caster"])  enemyAC = 70;
    if ([enemyname isEqualToString: @"Drow Abyss Blade"])  enemyAC = 75;
    if ([enemyname isEqualToString: @"Illithid Sorcerer"])  enemyAC = 80;
    if ([enemyname isEqualToString: @"Black Dragon"])  enemyAC = 95;
    
    //     This is where the player deals damage to the enemy.
    
    playerWC = playerWC - enemyAC;
    if (playerWC > 50) {
        playerhit = (rand()%3)+1;
        playerhit = playerhit + 1;
        if ([gameData.playerweapon isEqualToString: @"Hands"]) playerhit = playerhit + 0;
        if ([gameData.playerweapon isEqualToString: @"Shiny Dagger"]) playerhit = playerhit + 2;
        if ([gameData.playerweapon isEqualToString: @"Battle Axe"]) playerhit = playerhit + 4;
        if ([gameData.playerweapon isEqualToString: @"Silver Spear"]) playerhit = playerhit + 6;
        if ([gameData.playerweapon isEqualToString: @"War Hammer"]) playerhit = playerhit + 8;
        if ([gameData.playerweapon isEqualToString: @"Magic Sword"]) playerhit = playerhit + 10;
        if ([gameData.playerweapon isEqualToString: @"Vorpal Sword"]) playerhit = playerhit + 12;
        
        if ([gameData.playertrinket isEqualToString: @"Gauntlets of Rage"]) playerhit = playerhit + 1;
        
        int enemydef;
        if ([enemyname isEqualToString: @"Large Rat"]) enemydef = 0;
        if ([enemyname isEqualToString: @"Shadow Skulker"]) enemydef = 0;
        if ([enemyname isEqualToString: @"Goblin Scavenger"]) enemydef = 0;
        if ([enemyname isEqualToString: @"Giant Rat"]) enemydef = 2;
        if ([enemyname isEqualToString: @"Goblin Pickpocket"]) enemydef = 2;
        if ([enemyname isEqualToString: @"Goblin Warrior"]) enemydef = 3;
        if ([enemyname isEqualToString: @"Goblin Shaman"]) enemydef = 4;
        if ([enemyname isEqualToString: @"Bugbear"]) enemydef = 4;
        if ([enemyname isEqualToString: @"Giant Shadow Skulker"]) enemydef = 4;
        if ([enemyname isEqualToString: @"Orc Scout"]) enemydef = 4;
        if ([enemyname isEqualToString: @"Orc Bone Crusher"]) enemydef = 5;
        if ([enemyname isEqualToString: @"Orc Champion"]) enemydef = 6;
        if ([enemyname isEqualToString: @"Air Elemental"]) enemydef = 6;
        if ([enemyname isEqualToString: @"Ice Elemental"]) enemydef = 6;
        if ([enemyname isEqualToString: @"Mimic"]) enemydef = 7;
        if ([enemyname isEqualToString: @"Imp Shadow Claw"]) enemydef = 6;
        if ([enemyname isEqualToString: @"Imp Spell Slinger"]) enemydef = 6;
        if ([enemyname isEqualToString: @"Imp Demon Fang"]) enemydef = 7;
        if ([enemyname isEqualToString: @"Clay Golem"]) enemydef = 8;
        if ([enemyname isEqualToString: @"Beholder"]) enemydef = 8;
        if ([enemyname isEqualToString: @"Duergar Gloom Shifter"]) enemydef = 8;
        if ([enemyname isEqualToString: @"Duergar Stone Melder"]) enemydef = 8;
        if ([enemyname isEqualToString: @"Stone Golem"]) enemydef = 9;
        if ([enemyname isEqualToString: @"Gargoyle"]) enemydef = 10;
        if ([enemyname isEqualToString: @"Doppelganger"]) enemydef = 10;
        if ([enemyname isEqualToString: @"Drow Dread Soldier"]) enemydef = 10;
        if ([enemyname isEqualToString: @"Drow Doom Caster"]) enemydef = 10;
        if ([enemyname isEqualToString: @"Drow Abyss Blade"]) enemydef = 11;
        if ([enemyname isEqualToString: @"Illithid Sorcerer"]) enemydef = 12;
        if ([enemyname isEqualToString: @"Black Dragon"]) enemydef = 13;
        
        if ([gameData.playertrinket isEqualToString: @"Bracer of Vampirism"]) {
            int vampchance = (rand() % 5)+1;
            if (vampchance > 1) {
                vampalert = 1;
                vampamount = 1;
                if (enemyLV >= 3) vampamount = (rand()%2)+1;
                if (enemyLV >= 5) vampamount = (rand()%3)+1;
                if (enemyLV >= 7) vampamount = (rand()%4)+1;
                gameData.playerHP = gameData.playerHP + vampamount;
                if (gameData.playerHP > gameData.maxHP) gameData.playerHP = gameData.maxHP;
            } else {
                vampfailedalert = 1;
            }
        }
        
        playerhit = playerhit + gameData.playerLV;
        if (gameData.playerLV >= 3) playerhit = playerhit + 1;
        if (gameData.playerLV >= 5) playerhit = playerhit + 1;
        if (gameData.playerLV >= 7) playerhit = playerhit + 1;
        enemydef = enemydef + enemyLV;
        playerhit = playerhit - enemydef;
        if (playerhit < 1) playerhit = 1;
        enemyHP = enemyHP - playerhit;
        playerhitalert = 1;
    } else {
        if ([gameData.playertrinket isEqualToString: @"Bracer of Vampirism"]) vampfailedalert = 1;
        int glancingblowchance = (rand()%5)+1;
        if (glancingblowchance == 1) {
            playerhit = (rand()%2)+1;
            enemyHP = enemyHP - playerhit;
            playerhitalert = 1;
        } else {
            playermissalert = 1;
        }
    }
    
    [battleView addSubview:playerAttackMarker17];
    [self updateSprite:playerAttackMarker17 x:BplayerX y:BplayerY];
    [UIView animateWithDuration:0.75 animations:^{
        [self blockInteraction];
        [self updateSprite:playerAttackMarker17 x:BenemyX y:BenemyY];
    } completion:^(BOOL finished) {
        [playerAttackMarker17 removeFromSuperview];
        //     If the enemy is still alive after the player's attack, the game will load the "Enemy's Turn" Card. If not,
        //     the game will load the "EXP Award" Card.
        [self updateStats];
        if (enemyHP < 1) {
            [self awardCard];
        } else {
            [self enemyAttack];
        }
        [self unblockInteraction];
        [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
            [self updateEnemyHealthBar];
        } completion:nil];
    }];
}
- (IBAction)potionButton {
    [battleText setString:@""];
    if (gameData.playerHP == gameData.maxHP) {
        [battleText setString:@"Your health is full."];
        [self updateStats];
    } else {
        [self updateSprite:player15 x:BplayerX y:BplayerY];
        [self updateSprite:npc14 x:BenemyX y:BenemyY];
        [self updateHealthBars];
        if (gameData.ITEMhealingpotions > 0) {
            gameData.ITEMhealingpotions = gameData.ITEMhealingpotions - 1;
            [potionButton setTitle:[NSString stringWithFormat:@"Potion(%d)", gameData.ITEMhealingpotions] forState:UIControlStateNormal];
            healamount = (rand()%5)+1;
            healamount = healamount + 11;
            if ([gameData.playertrinket isEqualToString: @"Ring of Lesser Healing"]) healamount = healamount + 4;
            if ([gameData.playertrinket isEqualToString: @"Ring of Greater Healing"]) healamount = healamount + 7;
            gameData.playerHP = gameData.playerHP + healamount;
            if (gameData.playerHP > gameData.maxHP) gameData.playerHP = gameData.maxHP;
            healalert = 1;
            int Xdestination = BplayerX;
            int Ydestination = BplayerY - 16;
            
            [battleView addSubview:healsteal18];
            [self updateSprite:healsteal18 x:BplayerX y:BplayerY image:@"Heal Effect.gif"];
            [self updateStats];
            [UIView animateWithDuration:1.0 animations:^{
                [self blockInteraction];
                [self updateSprite:healsteal18 x:Xdestination y:Ydestination];
            } completion:^(BOOL finished) {
                [healsteal18 removeFromSuperview];
                [self enemyAttack];
                [self unblockInteraction];
            }];
            [self updateStats];
        } else {
            nopotionsalert = 1;
            [self updateStats];
            playerhitalert = 0;
            playermissalert = 0;
            vampalert = 0;
            vampfailedalert = 0;
            healalert = 0;
            nopotionsalert = 0;
            escapealert = 0;
            enemyhitalert = 0;
            enemymissalert = 0;
            enemystealalert = 0;
            enemyhealalert = 0;
        }
    }
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
        [self updatePlayerHealthBar];
    } completion:nil];
}

- (IBAction)escapeButton {
    [battleText setString:@""];
    escapealert = 1;
    
    //     If "blockrun" is set to 1 then you will not be able to run from a battle. (useful for boss battles)
    
    if (gameData.bossbattle == 1) blockrun = 1;
    if (blockrun == 1 || gameData.blockrun == 1) {
        [self updateSprite:player15 x:BplayerX y:BplayerY];
        [self updateSprite:npc14 x:BenemyX y:BenemyY];
        [self updateHealthBars];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You cannot run from this battle." message:nil delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
        [alert release];
        [self updateStats];
        playerhitalert = 0;
        playermissalert = 0;
        vampalert = 0;
        vampfailedalert = 0;
        healalert = 0;
        nopotionsalert = 0;
        escapealert = 0;
        enemyhitalert = 0;
        enemymissalert = 0;
        enemystealalert = 0;
        enemyhealalert = 0;
    } else {
        runaway = (rand()%100)+1;
        if ([gameData.playertrinket isEqualToString: @"Cloak of Distraction"]) runaway = 100;
        if (runaway > 40) {
            escapealert = 0;
            [self updateStats];
            [self successfulEscape];
        } else {
            [self updateStats];
            [self enemyAttack];
        }
    }
    
}
- (IBAction)exitBattleMode {
    UINavigationController* nav = [self navigationController];
    
    GameScreen* gameScreen;
    
    for (UIViewController* controller in [nav viewControllers]) {
        if ([controller isMemberOfClass:[GameScreen class]]) {
            gameScreen = (GameScreen*)controller;
        }
    }
    
    //This will cancel the spawning of stationary NPC sprites if they've been defeated.
    if (won) {
        if ([gameData.enemyID isEqualToString: @"lv1E1"]) gameData.lv1E1 = 1;
    
        if ([gameData.enemyID isEqualToString: @"lv2E1"]) gameData.lv2E1 = 1;
        if ([gameData.enemyID isEqualToString: @"lv2E2"]) gameData.lv2E2 = 1;
        if ([gameData.enemyID isEqualToString: @"lv2B1"]) gameData.lv2B1 = 1;
    
        if ([gameData.enemyID isEqualToString: @"lv3E1"]) gameData.lv3E1 = 1;
        if ([gameData.enemyID isEqualToString: @"lv3E2"]) gameData.lv3E2 = 1;
        if ([gameData.enemyID isEqualToString: @"lv3E3"]) gameData.lv3E3 = 1;
        if ([gameData.enemyID isEqualToString: @"lv3M1"]) gameData.lv3M1 = 1;
        if ([gameData.enemyID isEqualToString: @"lv3M2"]) gameData.lv3M2 = 1;
    
        if ([gameData.enemyID isEqualToString: @"lv4E1"]) gameData.lv4E1 = 1;
        if ([gameData.enemyID isEqualToString: @"lv4E2"]) gameData.lv4E2 = 1;
        if ([gameData.enemyID isEqualToString: @"lv4E3"]) gameData.lv4E3 = 1;
        if ([gameData.enemyID isEqualToString: @"lv4B1"]) gameData.lv4B1 = 1;
        if ([gameData.enemyID isEqualToString: @"lv4M1"]) gameData.lv4M1 = 1;
        if ([gameData.enemyID isEqualToString: @"lv4M2"]) gameData.lv4M2 = 1;
        
        if ([gameData.enemyID isEqualToString: @"lv5E1"]) gameData.lv5E1 = 1;
        if ([gameData.enemyID isEqualToString: @"lv5E2"]) gameData.lv5E2 = 1;
        if ([gameData.enemyID isEqualToString: @"lv5E3"]) gameData.lv5E3 = 1;
        if ([gameData.enemyID isEqualToString: @"lv5E4"]) gameData.lv5E4 = 1;
        if ([gameData.enemyID isEqualToString: @"lv5M1"]) gameData.lv5M1 = 1;
    
        if ([gameData.enemyID isEqualToString: @"lv6E1"]) gameData.lv6E1 = 1;
        if ([gameData.enemyID isEqualToString: @"lv6E2"]) gameData.lv6E2 = 1;
        if ([gameData.enemyID isEqualToString: @"lv6E3"]) gameData.lv6E3 = 1;
        if ([gameData.enemyID isEqualToString: @"lv6E4"]) gameData.lv6E4 = 1;
    
        if ([gameData.enemyID isEqualToString: @"lv7B1"]) gameData.lv7B1 = 1;
    
        gameData.enemyID = @"";
    }
    
    //     This will bring the player back to the screen he was on before he entered the battle.
    
    if ([gameData.area isEqualToString: @"surface"]) {
        [gameData playAudio:@"Surface Music"];
    } else {
        [gameData playAudio:@"Cave Music"];
    }
    gameData.bossbattle = 0;
    gameData.blockrun = 0;
    [[self navigationController] popToViewController:gameScreen animated:YES];
    [gameScreen goToCard:gameData.battlereturn];
}
- (void)setUpBattle {
    //     Don't change this code. It only activates when the player enters this card from outside of battle.
    [self setUpEnemy];
    [gameData playSoundEffect:@"Encounter"];
    playerAttackMarker17.frame = CGRectMake(-500, -500, 45, 45);
    enemyAttackMarker16.frame = CGRectMake(-500, -500, 45, 45);
    
    markerX = 50;
    markerY = 226;
    selectedbutton = 1;
    BplayerY = 93;
    BplayerX = -39;
    BenemyY = 93;
    BenemyX = 313;
    if ([gameData.NPCsprite isEqualToString: @"Black Dragon.gif"]) {
        BenemyY = BenemyY - 44;
        BenemyX = BenemyX - 22;
    }
    [self updateSprite:player15 x:BplayerX y:BplayerY image:gameData.playersprite];
    [self updateSprite:npc14 x:BenemyX y:BenemyY image:gameData.NPCsprite];
    [self updateHealthBars];
    BplayerX = BplayerX + 11*12;
    BenemyX = BenemyX - 11*12;
    
    if ([enemyname isEqualToString: @"Black Dragon"]) {
        [gameData playAudio:@"Final Battle Music"];
        CGRect f = enemyHealthView.frame;
        f.size.width = 58*1.8 + 2;
        [enemyHealthView setFrame:f];
    } else {
        if (gameData.bossbattle == 1) {
            [gameData playAudio:@"Boss Battle Music"];
        } else {
            [gameData playAudio:@"Battle Music"];
        }
    }
    
    playerHealthView.alpha = 0.0;
    enemyHealthView.alpha = 0.0;
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionAllowUserInteraction animations:^{

            [self updateSprite:player15 x:BplayerX y:BplayerY];
            [self updateSprite:npc14 x:BenemyX y:BenemyY];
            [self updateHealthBars];
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.5 animations:^{
                playerHealthView.alpha = 1.0;
                enemyHealthView.alpha = 1.0;
            }];
        }];

    //Set up text view
    [self updateStats];
    
    test = 0;
    playerhitalert = 0;
    playermissalert = 0;
    vampalert = 0;
    vampfailedalert = 0;
    healalert = 0;
    nopotionsalert = 0;
    escapealert = 0;
    enemyhitalert = 0;
    enemymissalert = 0;
    enemystealalert = 0;
    enemyhealalert = 0;
    
}
- (void)setUpEnemy {
    gameData.NPCalive = 0;
    gameData.NPC2alive = 0;
    if (gameData.NPCnumber == 2) gameData.NPCsprite = gameData.NPC2sprite;
    enemyHP = (rand()%3)+1;
    enemydropgold = (rand()%5)+1;
    if ([gameData.NPCsprite isEqualToString:@"Large Rat.gif"]) {
        enemyname = @"Large Rat";
        enemyHP = enemyHP + 9;
        enemymaxHP = enemyHP;
        enemyLV = 1;
        enemydropgold = enemydropgold + 1;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"Shadow Skulker.gif"]) {
        enemyname = @"Shadow Skulker";
        enemyHP = enemyHP + 10;
        enemymaxHP = enemyHP;
        enemyLV = 1;
        enemydropgold = enemydropgold + 1;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"GoblinM1.gif"]) {
        enemyname = @"Goblin Scavenger";
        enemyHP = enemyHP + 11;
        enemymaxHP = enemyHP;
        enemyLV = 1;
        enemydropgold = enemydropgold + 2;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"Giant Rat.gif"]) {
        enemyname = @"Giant Rat";
        enemyHP = enemyHP + 12;
        enemymaxHP = enemyHP;
        enemyLV = 2;
        enemydropgold = enemydropgold + 8;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"GoblinM2.gif"]) {
        enemyname = @"Goblin Pickpocket";
        enemyHP = enemyHP + 13;
        enemymaxHP = enemyHP;
        enemyLV = 2;
        enemydropgold = enemydropgold + 8;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"GoblinM3.gif"]) {
        enemyname = @"Goblin Warrior";
        enemyHP = enemyHP + 14;
        enemymaxHP = enemyHP;
        enemyLV = 2;
        enemydropgold = enemydropgold + 8;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"GoblinM4.gif"]) {
        enemyname = @"Goblin Shaman";
        enemyHP = enemyHP + 15;
        enemymaxHP = enemyHP;
        enemyLV = 2;
        enemydropgold = enemydropgold + 9;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"Bugbear.gif"]) {
        enemyname = @"Bugbear";
        enemyHP = enemyHP + 28;
        enemymaxHP = enemyHP;
        enemyLV = 3;
        enemydropgold = enemydropgold + 18;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"Giant Shadow Skulker.gif"]) {
        enemyname = @"Giant Shadow Skulker";
        enemyHP = enemyHP + 16;
        enemymaxHP = enemyHP;
        enemyLV = 3;
        enemydropgold = enemydropgold + 16;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"OrcM1.gif"]) {
        enemyname = @"Orc Scout";
        enemyHP = enemyHP + 17;
        enemymaxHP = enemyHP;
        enemyLV = 3;
        enemydropgold = enemydropgold + 16;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"OrcM2.gif"]) {
        enemyname = @"Orc Bone Crusher";
        enemyHP = enemyHP + 18;
        enemymaxHP = enemyHP;
        enemyLV = 3;
        enemydropgold = enemydropgold + 16;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"OrcM3.gif"]) {
        enemyname = @"Orc Champion";
        enemyHP = enemyHP + 19;
        enemymaxHP = enemyHP;
        enemyLV = 3;
        enemydropgold = enemydropgold + 17;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"Air Elemental.gif"]) {
        enemyname = @"Air Elemental";
        enemyHP = enemyHP + 17;
        enemymaxHP = enemyHP;
        enemyLV = 4;
        enemydropgold = enemydropgold + 21;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"Ice Elemental.gif"]) {
        enemyname = @"Ice Elemental";
        enemyHP = enemyHP + 20;
        enemymaxHP = enemyHP;
        enemyLV = 4;
        enemydropgold = enemydropgold + 22;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"Mimic.gif"]) {
        enemyname = @"Mimic";
        enemyHP = enemyHP + 25;
        enemymaxHP = enemyHP;
        enemyLV = 5;
        enemydropgold = enemydropgold + 25;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"ImpM1.gif"]) {
        enemyname = @"Imp Shadow Claw";
        enemyHP = enemyHP + 20;
        enemymaxHP = enemyHP;
        enemyLV = 4;
        enemydropgold = enemydropgold + 24;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"ImpM2.gif"]) {
        enemyname = @"Imp Spell Slinger";
        enemyHP = enemyHP + 21;
        enemymaxHP = enemyHP;
        enemyLV = 4;
        enemydropgold = enemydropgold + 24;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"ImpM3.gif"]) {
        enemyname = @"Imp Demon Fang";
        enemyHP = enemyHP + 22;
        enemymaxHP = enemyHP;
        enemyLV = 4;
        enemydropgold = enemydropgold + 25;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"Clay Golem.gif"]) {
        enemyname = @"Clay Golem";
        enemyHP = enemyHP + 23;
        enemymaxHP = enemyHP;
        enemyLV = 4;
        enemydropgold = enemydropgold + 25;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"Beholder.gif"]) {
        enemyname = @"Beholder";
        enemyHP = enemyHP + 42;
        enemymaxHP = enemyHP;
        enemyLV = 5;
        enemydropgold = enemydropgold + 39;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"DuergarM1.gif"]) {
        enemyname = @"Duergar Gloom Shifter";
        enemyHP = enemyHP + 24;
        enemymaxHP = enemyHP;
        enemyLV = 5;
        enemydropgold = enemydropgold + 32;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"DuergarM2.gif"]) {
        enemyname = @"Duergar Stone Melder";
        enemyHP = enemyHP + 25;
        enemymaxHP = enemyHP;
        enemyLV = 5;
        enemydropgold = enemydropgold + 32;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"Stone Golem.gif"]) {
        enemyname = @"Stone Golem";
        enemyHP = enemyHP + 26;
        enemymaxHP = enemyHP;
        enemyLV = 5;
        enemydropgold = enemydropgold + 33;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"Gargoyle.gif"]) {
        enemyname = @"Gargoyle";
        enemyHP = enemyHP + 27;
        enemymaxHP = enemyHP;
        enemyLV = 5;
        enemydropgold = enemydropgold + 33;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"HumanF6.gif"]) {
        enemyname = @"Doppelganger";
        enemyHP = enemyHP + 32;
        enemymaxHP = enemyHP;
        enemyLV = 5;
        enemydropgold = enemydropgold + 34;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"DrowM1.gif"]) {
        enemyname = @"Drow Dread Soldier";
        enemyHP = enemyHP + 27;
        enemymaxHP = enemyHP;
        enemyLV = 6;
        enemydropgold = enemydropgold + 40;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"DrowF1.gif"]) {
        enemyname = @"Drow Dread Soldier";
        enemyHP = enemyHP + 27;
        enemymaxHP = enemyHP;
        enemyLV = 6;
        enemydropgold = enemydropgold + 40;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"DrowM2.gif"]) {
        enemyname = @"Drow Doom Caster";
        enemyHP = enemyHP + 28;
        enemymaxHP = enemyHP;
        enemyLV = 6;
        enemydropgold = enemydropgold + 40;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"DrowF2.gif"]) {
        enemyname = @"Drow Doom Caster";
        enemyHP = enemyHP + 28;
        enemymaxHP = enemyHP;
        enemyLV = 6;
        enemydropgold = enemydropgold + 40;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"DrowM3.gif"]) {
        enemyname = @"Drow Abyss Blade";
        enemyHP = enemyHP + 29;
        enemymaxHP = enemyHP;
        enemyLV = 6;
        enemydropgold = enemydropgold + 41;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"DrowF3.gif"]) {
        enemyname = @"Drow Abyss Blade";
        enemyHP = enemyHP + 29;
        enemymaxHP = enemyHP;
        enemyLV = 6;
        enemydropgold = enemydropgold + 41;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"IllithidM1.gif"]) {
        enemyname = @"Illithid Sorcerer";
        enemyHP = enemyHP + 30;
        enemymaxHP = enemyHP;
        enemyLV = 6;
        enemydropgold = enemydropgold + 48;
        enemypict = 3;
    }
    if ([gameData.NPCsprite isEqualToString:@"Black Dragon.gif"]) {
        enemyname = @"Black Dragon";
        enemyHP = enemyHP + 75;
        enemymaxHP = enemyHP;
        enemyLV = 7;
        enemydropgold = enemydropgold + 60;
        enemypict = 3;
    }
    [self updateStats];
}
- (void)enemyAttack {
    int enemyaction = 1, attack = 1, steal = 2, heal = 3;
    if (gameData.gold > 0) {
        if ([enemyname isEqualToString: @"Goblin Pickpocket"]) enemyaction = [self random:@"1 1 1 2"];
        
        if ([enemyname isEqualToString: @"Imp Shadow Claw"]) enemyaction = [self random: @"1 1 1 2"];
        if ([enemyname isEqualToString: @"Duergar Gloom Shifter"]) enemyaction = [self random: @"1 1 1 2"];
    }
    if ([enemyname isEqualToString: @"Goblin Shaman"]) enemyaction = [self random: @"1 1 1 1 1 1 3"];
    if ([enemyname isEqualToString: @"Imp Spell Slinger"]) enemyaction = [self random: @"1 1 1 1 1 1 3"];
    if ([enemyname isEqualToString: @"Drow Doom Caster"]) enemyaction = [self random: @"1 1 1 1 1 1 3"];
    if ([enemyname isEqualToString: @"Beholder"]) enemyaction = [self random: @"1 1 1 1 3"];
    
    int playerAC,playerdef;
    
    if (enemyaction == attack) {
        int enemyWC = (rand()%100) + 1;
        enemyWC = enemyWC + 10;
        if ([enemyname isEqualToString: @"Large Rat"]) enemyWC = enemyWC + 20;
        if ([enemyname isEqualToString: @"Shadow Skulker"]) enemyWC = enemyWC + 20;
        if ([enemyname isEqualToString: @"Goblin Scavenger"]) enemyWC = enemyWC + 20;
        if ([enemyname isEqualToString: @"Giant Rat"]) enemyWC = enemyWC + 35;
        if ([enemyname isEqualToString: @"Goblin Pickpocket"]) enemyWC = enemyWC + 35;
        if ([enemyname isEqualToString: @"Goblin Warrior"]) enemyWC = enemyWC + 40;
        if ([enemyname isEqualToString: @"Goblin Shaman"]) enemyWC = enemyWC + 45;
        if ([enemyname isEqualToString: @"Bugbear"]) enemyWC = enemyWC + 65;
        if ([enemyname isEqualToString: @"Giant Shadow Skulker"]) enemyWC = enemyWC + 50;
        if ([enemyname isEqualToString: @"Orc Scout"]) enemyWC = enemyWC + 50;
        if ([enemyname isEqualToString: @"Orc Bone Crusher"]) enemyWC = enemyWC + 55;
        if ([enemyname isEqualToString: @"Orc Champion"]) enemyWC = enemyWC + 60;
        if ([enemyname isEqualToString: @"Air Elemental"]) enemyWC = enemyWC + 60;
        if ([enemyname isEqualToString: @"Ice Elemental"]) enemyWC = enemyWC + 60;
        if ([enemyname isEqualToString: @"Mimic"]) enemyWC = enemyWC + 70;
        if ([enemyname isEqualToString: @"Imp Shadow Claw"]) enemyWC = enemyWC + 65;
        if ([enemyname isEqualToString: @"Imp Spell Slinger"]) enemyWC = enemyWC + 65;
        if ([enemyname isEqualToString: @"Imp Demon Fang"]) enemyWC = enemyWC + 70;
        if ([enemyname isEqualToString: @"Clay Golem"]) enemyWC = enemyWC + 75;
        if ([enemyname isEqualToString: @"Beholder"]) enemyWC = enemyWC + 95;
        if ([enemyname isEqualToString: @"Duergar Gloom Shifter"]) enemyWC = enemyWC + 80;
        if ([enemyname isEqualToString: @"Duergar Stone Melder"]) enemyWC = enemyWC + 80;
        if ([enemyname isEqualToString: @"Stone Golem"]) enemyWC = enemyWC + 85;
        if ([enemyname isEqualToString: @"Gargoyle"]) enemyWC = enemyWC + 90;
        if ([enemyname isEqualToString: @"Doppelganger"]) enemyWC = enemyWC + 95;
        if ([enemyname isEqualToString: @"Drow Dread Soldier"]) enemyWC = enemyWC + 95;
        if ([enemyname isEqualToString: @"Drow Doom Caster"]) enemyWC = enemyWC + 95;
        if ([enemyname isEqualToString: @"Drow Abyss Blade"]) enemyWC = enemyWC + 100;
        if ([enemyname isEqualToString: @"Illithid Sorcerer"]) enemyWC = enemyWC + 105;
        if ([enemyname isEqualToString: @"Black Dragon"]) enemyWC = enemyWC + 120;
        
        if ([gameData.playerarmor isEqualToString: @"None"]) playerAC = 20;
        if ([gameData.playerarmor isEqualToString: @"Cloth Vest"]) playerAC = 35;
        if ([gameData.playerarmor isEqualToString: @"Leather Cuirass"]) playerAC = 50;
        if ([gameData.playerarmor isEqualToString: @"Battle Raiment"]) playerAC = 65;
        if ([gameData.playerarmor isEqualToString: @"Chain Mail"]) playerAC = 80;
        if ([gameData.playerarmor isEqualToString: @"Enchanted Plate"]) playerAC = 95;
        if ([gameData.playerarmor isEqualToString: @"Aegis Robe"]) playerAC = 110;
        
        if ([gameData.playertrinket isEqualToString: @"Amulet of Protection"]) playerAC = playerAC + 5;
        
        enemyWC = enemyWC - playerAC;
        if (enemyWC > 50) {
            enemyhit = (rand()% 3)+1;
            enemyhit = enemyhit + 1;
            if ([enemyname isEqualToString: @"Large Rat"]) enemyhit = enemyhit + 0;
            if ([enemyname isEqualToString: @"Shadow Skulker"]) enemyhit = enemyhit + 0;
            if ([enemyname isEqualToString: @"Goblin Scavenger"]) enemyhit = enemyhit + 0;
            if ([enemyname isEqualToString: @"Giant Rat"]) enemyhit = enemyhit + 2;
            if ([enemyname isEqualToString: @"Goblin Pickpocket"]) enemyhit = enemyhit + 2;
            if ([enemyname isEqualToString: @"Goblin Warrior"]) enemyhit = enemyhit + 3;
            if ([enemyname isEqualToString: @"Goblin Shaman"]) enemyhit = enemyhit + 4;
            if ([enemyname isEqualToString: @"Bugbear"]) enemyhit = enemyhit + 4;
            if ([enemyname isEqualToString: @"Giant Shadow Skulker"]) enemyhit = enemyhit + 4;
            if ([enemyname isEqualToString: @"Orc Scout"]) enemyhit = enemyhit + 4;
            if ([enemyname isEqualToString: @"Orc Bone Crusher"]) enemyhit = enemyhit + 5;
            if ([enemyname isEqualToString: @"Orc Champion"]) enemyhit = enemyhit + 6;
            if ([enemyname isEqualToString: @"Air Elemental"]) enemyhit = enemyhit + 6;
            if ([enemyname isEqualToString: @"Ice Elemental"]) enemyhit = enemyhit + 6;
            if ([enemyname isEqualToString: @"Mimic"]) enemyhit = enemyhit + 7;
            if ([enemyname isEqualToString: @"Imp Shadow Claw"]) enemyhit = enemyhit + 6;
            if ([enemyname isEqualToString: @"Imp Spell Slinger"]) enemyhit = enemyhit + 6;
            if ([enemyname isEqualToString: @"Imp Demon Fang"]) enemyhit = enemyhit + 7;
            if ([enemyname isEqualToString: @"Clay Golem"]) enemyhit = enemyhit + 8;
            if ([enemyname isEqualToString: @"Beholder"]) enemyhit = enemyhit + 8;
            if ([enemyname isEqualToString: @"Duergar Gloom Shifter"]) enemyhit = enemyhit + 8;
            if ([enemyname isEqualToString: @"Duergar Stone Melder"]) enemyhit = enemyhit + 8;
            if ([enemyname isEqualToString: @"Stone Golem"]) enemyhit = enemyhit + 9;
            if ([enemyname isEqualToString: @"Gargoyle"]) enemyhit = enemyhit + 10;
            if ([enemyname isEqualToString: @"Doppelganger"]) enemyhit = enemyhit + 10;
            if ([enemyname isEqualToString: @"Drow Dread Soldier"]) enemyhit = enemyhit + 10;
            if ([enemyname isEqualToString: @"Drow Doom Caster"]) enemyhit = enemyhit + 10;
            if ([enemyname isEqualToString: @"Drow Abyss Blade"]) enemyhit = enemyhit + 11;
            if ([enemyname isEqualToString: @"Illithid Sorcerer"]) enemyhit = enemyhit + 12;
            if ([enemyname isEqualToString: @"Black Dragon"]) enemyhit = enemyhit + 13;
            
            if ([gameData.playerarmor isEqualToString: @"None"]) playerdef = 0;
            if ([gameData.playerarmor isEqualToString: @"Cloth Vest"]) playerdef = 2;
            if ([gameData.playerarmor isEqualToString: @"Leather Cuirass"]) playerdef = 4;
            if ([gameData.playerarmor isEqualToString: @"Battle Raiment"]) playerdef = 6;
            if ([gameData.playerarmor isEqualToString: @"Chain Mail"]) playerdef = 8;
            if ([gameData.playerarmor isEqualToString: @"Enchanted Plate"]) playerdef = 10;
            if ([gameData.playerarmor isEqualToString: @"Aegis Robe"]) playerdef = 12;
            
            if ([gameData.playertrinket isEqualToString: @"Amulet of Protection"]) playerdef = playerdef + 1;
            
            
            enemyhit = enemyhit + enemyLV;
            if (enemyLV >= 3) enemyhit = enemyhit + 1;
            if (enemyLV >= 5) enemyhit = enemyhit + 1;
            if (enemyLV >= 7) enemyhit = enemyhit + 1;
            playerdef = playerdef + gameData.playerLV;
            enemyhit = enemyhit - playerdef;
            if (enemyhit < 1) enemyhit = 1;
            gameData.playerHP = gameData.playerHP - enemyhit;
            enemyhitalert = 1;
        } else {
            int glancingblowchance = (rand()% 5)+1;
            if (glancingblowchance == 1) {
                enemyhit = (rand()%2)+1;
                gameData.playerHP = gameData.playerHP - enemyhit;
                enemyhitalert = 1;
            } else {
                enemymissalert = 1;
            }
        }
        
        [self updateSprite:enemyAttackMarker16 x:BenemyX y:BenemyY];
        
        [battleView addSubview:enemyAttackMarker16];
        [UIView animateWithDuration:0.75 animations:^{
            [self blockInteraction];
            [self updateSprite:enemyAttackMarker16 x:BplayerX y:BplayerY];
        } completion:^(BOOL finished) {
            [enemyAttackMarker16 removeFromSuperview];
            //     If the player's HP reach 0 after an enemy attack, the game will load the Game Over Card. If not, the
            //     game will load the Player's Turn card.
            [self updateStats];
            if (gameData.playerHP < 1) {
                [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                    [self updatePlayerHealthBar];
                } completion:^(BOOL finished) {
                    [self gameOver];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You have been defeated!" message:nil delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
                    [alert show];
                    [alert release];
                }];
            } else {
                playerhitalert = 0;
                playermissalert = 0;
                vampalert = 0;
                vampfailedalert = 0;
                healalert = 0;
                nopotionsalert = 0;
                escapealert = 0;
                enemyhitalert = 0;
                enemymissalert = 0;
                enemystealalert = 0;
                enemyhealalert = 0;
                [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                    [self updatePlayerHealthBar];
                } completion:nil];
            }
            [self unblockInteraction];
        }];
        }
    if (enemyaction == steal) {
            enemystealalert = 1;
            stealamount = (rand()%4)+1;
            stealamount = stealamount + gameData.playerLV;
            stealamount = stealamount + gameData.playerLV;
            if (stealamount > gameData.gold) stealamount = gameData.gold;
            gameData.gold = gameData.gold - stealamount;
            
            [battleView addSubview:healsteal18];
            [self updateSprite:healsteal18 x:BenemyX y:BenemyY image:@"Steal Effect.gif"];
            
            [UIView animateWithDuration:1.0 animations:^{
                [self blockInteraction];
                [self updateSprite:healsteal18 x:BplayerX y:BplayerY];
            } completion:^(BOOL finished) {
                [self updateStats];
                [healsteal18 removeFromSuperview];
                playerhitalert = 0;
                playermissalert = 0;
                vampalert = 0;
                vampfailedalert = 0;
                healalert = 0;
                nopotionsalert = 0;
                escapealert = 0;
                enemyhitalert = 0;
                enemymissalert = 0;
                enemystealalert = 0;
                enemyhealalert = 0;
                [self unblockInteraction];
                [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                    [self updateHealthBars];
                } completion:nil];
            }];
        }
        
    if (enemyaction == heal) {
            enemyhealalert = 1;
            enemyhealamount = (rand()%4)+1;
            enemyhealamount = enemyhealamount + 2;
            enemyhealamount = enemyhealamount + enemyLV;
            enemyHP = enemyHP + enemyhealamount;
            if (enemyHP > enemymaxHP) enemyHP = enemymaxHP;
            int Xdestination = BenemyX;
            int Ydestination = BenemyY - 16;
            
            [battleView addSubview:healsteal18];
            [self updateSprite:healsteal18 x:BenemyX y:BenemyY image:@"Heal Effect.gif"];
            [self updateStats];
            [UIView animateWithDuration:1.0 animations:^{
                [self blockInteraction];
                [self updateSprite:healsteal18 x:Xdestination y:Ydestination];
            } completion:^(BOOL finished) {
                [healsteal18 removeFromSuperview];
                playerhitalert = 0;
                playermissalert = 0;
                vampalert = 0;
                vampfailedalert = 0;
                healalert = 0;
                nopotionsalert = 0;
                escapealert = 0;
                enemyhitalert = 0;
                enemymissalert = 0;
                enemystealalert = 0;
                enemyhealalert = 0;
                [self unblockInteraction];
                [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
                    [self updateEnemyHealthBar];
                } completion:nil];
            }];
        }
}
- (void)successfulEscape {
    [self updateSprite:player15 x:BplayerX y:BplayerY];
    [self updateSprite:npc14 x:BenemyX y:BenemyY];
    [self updateHealthBars];
    
    blockrun = 0;
    gameData.bossbattle = 0;
    if ([gameData.playertrinket isEqualToString: @"Cloak of Distraction"]) {
        [specialText appendString:@"Your Cloak of Distraction secures your retreat. You get away safely..."];
    } else {
        if (gameData.gold > 0) {
            [specialText appendString:@"You throw some gold over your shoulder to distract the enemy! You get away safely..."];
        } else {
            [specialText appendString: @"You call over your shoulder \"Look! Those guys are recruiting enemies for a better RPG!\" The enemy turns in excitement and you get away safely..."];
        }
        int goldloss = gameData.playerLV * 2;
        goldloss = goldloss - 1;
        gameData.gold = gameData.gold - goldloss;
        if (gameData.gold < 0) gameData.gold = 0;
    }
    attackBtn.hidden = TRUE;
    potionButton.hidden = TRUE;
    escapeButton.hidden = TRUE;
    exitView.hidden = FALSE;
    
    BplayerX = BplayerX - 11*12;
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
        playerHealthView.alpha = 0.0;
        enemyHealthView.alpha = 0.0;
    } completion:^(BOOL finished){}];
    [UIView animateWithDuration:0.75 delay:0.0 options:UIViewAnimationOptionAllowUserInteraction animations:^{

        [self updateSprite:player15 x:BplayerX y:BplayerY];
        [self updateHealthBars];
    } completion:^(BOOL finished){}];
    
    won = FALSE;
    [self updateStats];
}
- (void)awardCard {   
    [self updateSprite:player15 x:BplayerX y:BplayerY];
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
        npc14.alpha = 0.0;
        enemyHealthView.alpha = 0.0;
    } completion:nil];
    [self updateHealthBars];
    
    
    [self updateStats];
            
            //     This will award the player EXP and Gold.
            
            //---OPTIONAL GOLD EARN DECREASE----------------------------------------------------------------
    if (enemyLV < gameData.playerLV) {
        gameData.enemydropgoldminus = gameData.playerLV * 2;
        enemydropgold = enemydropgold - gameData.enemydropgoldminus;
        if (enemydropgold < enemyLV) enemydropgold = enemyLV;
    }
            //--/OPTIONAL GOLD EARN DECREASE----------------------------------------------------------------
    int luckplus = (rand()%enemyLV)+1;
    luckplus = luckplus + enemyLV;
    if ([gameData.playertrinket isEqualToString: @"Necklace of Luck"]) enemydropgold = enemydropgold + luckplus;
    gameData.gold = gameData.gold + enemydropgold;
    if (gameData.gold > 30000) gameData.gold = 30000;
            
    int enemyEXPvalue = 100;
    int EXPplus = 0;
    int EXPminus = 0;
    int baseEXPminus = 50;
    int battleLV = gameData.playerLV - enemyLV;
    if (battleLV > 0) {
        EXPminus = 35 * battleLV;
        EXPminus = EXPminus + baseEXPminus;
    }
    if (battleLV < 0) {
        battleLV = abs(battleLV);
        EXPplus = 15 * battleLV;
    }
    enemyEXPvalue = enemyEXPvalue + EXPplus;
    enemyEXPvalue = enemyEXPvalue - EXPminus;
    if (enemyEXPvalue < 5) enemyEXPvalue = 5;
    gameData.playerEXP = gameData.playerEXP - enemyEXPvalue;
    [specialText appendString: [NSString stringWithFormat:@"You have defeated the %@!",enemyname]];
    [specialText appendString: [NSString stringWithFormat:@"\n+ %d EXP!",enemyEXPvalue]];
    [specialText appendString: [NSString stringWithFormat:@"\n+ %d Gold!",enemydropgold]];
            
    //     This will award any items the enemy had to the player.
            
    NSString* enemydropitemString = @"";
    int dropitemchance = 0;
    int enemydropitem = 0;
    int rareitemchance = 0;
            
    int playerLVcheck = gameData.playerLV - 1;
    if (enemyLV > playerLVcheck) dropitemchance = (rand()%12)+1;
    if (enemyLV == playerLVcheck) dropitemchance = (rand()%20)+1;
    if (enemyLV < playerLVcheck) dropitemchance = (rand()%35)+1;
    if ([gameData.playertrinket isEqualToString: @"Necklace of Luck"]) dropitemchance = dropitemchance - 2;
    if (dropitemchance < 1) dropitemchance = 1;
    if (enemyLV >= gameData.playerLV) {
        rareitemchance = (rand()%40)+1;
        if ([gameData.playertrinket isEqualToString: @"Necklace of Luck"]) rareitemchance = (rand()%30)+1;
    }
    if (rareitemchance == 1) dropitemchance = -1;
    if (dropitemchance == -1) {
        enemydropitem = (rand()%7)+1;
            if (enemydropitem == 1) enemydropitemString = @"Necklace of Luck";
            if (enemydropitem == 2) enemydropitemString = @"Ring of Lesser Healing";
            if (enemydropitem == 3) enemydropitemString = @"Amulet of Protection";
            if (enemydropitem == 4) enemydropitemString = @"Gauntlets of Rage";
            if (enemydropitem == 5) enemydropitemString = @"Ring of Greater Healing";
            if (enemydropitem == 6) enemydropitemString = @"Bracer of Vampirism";
            if (enemydropitem == 7) enemydropitemString = @"Cloak of Distraction";
    }
    if (dropitemchance == 1) {
        enemydropitem = (rand()%1)+1;
            if (enemydropitem == 1) enemydropitemString = @"Potion";
        [battleText appendFormat:@"\nYou found a %@!",enemydropitemString];
        if (gameData.ITEMhealingpotions == 10) [battleText appendFormat:@"\nYou can't carry anymore Potions."];
    }
            
    if ([enemydropitemString isEqualToString: @"Potion"]) gameData.ITEMhealingpotions = gameData.ITEMhealingpotions + 1;
    if (gameData.ITEMhealingpotions > 10) gameData.ITEMhealingpotions = 10;
    if (dropitemchance == -1) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"The enemy was carrying a %@. Would you like to replace it with your current trinket: %@?",enemydropitemString,gameData.playertrinket] message:nil delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
        [alert show];
        [alert release];
        getItem = enemydropitemString;
        [getItem retain];
    }
            //------------------------------------------------------------------------------------------------
    gameData.walktime = 15;
    if ([gameData.playertrinket isEqualToString: @"Ring of Lesser Healing"]) gameData.walktime = 10;
    if ([gameData.playertrinket isEqualToString: @"Ring of Greater Healing"]) gameData.walktime = 5;
            
            //     This makes the computer check to see if the player's got enough EXP to go up a level. Change the values
                //     to set how much EXP is needed to reach each level.
                
    int newLV = 0;
    int EXPcarry = 0;
    if (gameData.playerEXP < 1) {
        [gameData playSoundEffect:@"LVup"];
        EXPcarry = gameData.playerEXP;
        newLV = gameData.playerLV + 1;
        gameData.playerEXP = 1000;
        gameData.playerEXPadd = gameData.playerEXPadd + 200;
        if (gameData.playerEXPadd > 2000) gameData.playerEXPadd = 2000;
        gameData.playerEXP = gameData.playerEXP + gameData.playerEXPadd;
    }
                
                //     With this block of code, the player will gain extra HP and maxHP whenever he raises a level. Change the
                //     value of "HPup" in the third line to decide how much HP the player will gain.
                
    if (newLV > gameData.playerLV) {
        gameData.playerEXP = gameData.playerEXP + EXPcarry;
        int HPup = [self random:@"3 4"];
        gameData.maxHP = gameData.maxHP + HPup;
        if (gameData.maxHP > 30000) gameData.maxHP = 30000;
        gameData.playerHP = gameData.playerHP + HPup;
        if (gameData.playerHP > gameData.maxHP) gameData.playerHP = gameData.maxHP;
                
        int MPup = [self random:@"2 3"];
        gameData.maxMP = gameData.maxMP + MPup;
        if (gameData.maxMP > 30000) gameData.maxMP = 30000;
        gameData.playerMP = gameData.playerMP + MPup;
        if (gameData.playerMP > gameData.maxMP) gameData.playerMP = gameData.maxMP;
                
        
        [specialText appendString: [NSString stringWithFormat:@"\nYou have reached level %d",newLV]];
        [specialText appendString: [NSString stringWithFormat:@"\n+ %d HP",HPup]];
        gameData.playerLV = newLV;
    }
    attackBtn.hidden = TRUE;
    potionButton.hidden = TRUE;
    escapeButton.hidden = TRUE;
    exitView.hidden = FALSE;
    
    won = TRUE;
    [self updateStats];
}
- (void)gameOver {
    [gameData playAudio:@"Game Over Music"];
    [gameData.theAudio setNumberOfLoops:0];
    GameOver *controller = [[GameOver alloc] initWithNibName:@"GameOver" bundle:nil];
    [[self navigationController] pushViewController:controller animated:YES];
}
- (int)random:(NSString*)string {
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    return [[string substringWithRange:NSMakeRange(rand()%[string length], 1)] intValue];
}

- (void)alertView:(UIAlertView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        gameData.playertrinket = [NSString stringWithString:getItem];
        [getItem release];
    } else {
        [self updateStats];
    }
}

- (void)updateSprite:(UIImageView*)sprite x:(int)x y:(int)y {
    sprite.frame = CGRectMake(x,y-10,sprite.frame.size.width,sprite.frame.size.height);
}
- (void)updateSprite:(UIImageView*)sprite x:(int)x y:(int)y image:(NSString*)image {
    [sprite setImage:[UIImage imageNamed:image]];
    sprite.frame = CGRectMake(x,y-10,sprite.frame.size.width,sprite.frame.size.height);
}
- (void)print:(NSString*)string {
    
    if ([textView.text length] > 0) {
        textView.text = [NSString stringWithFormat:@"%@\n%@",textView.text,string];
    } else {
        textView.text = [NSString stringWithFormat:@"%@",string];
    }
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end

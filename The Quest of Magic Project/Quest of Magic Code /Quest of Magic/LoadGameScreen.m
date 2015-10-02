//
//  LoadGameScreen.m
//  Quest of Magic
//
//  Created by Matthew French on 5/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LoadGameScreen.h"

#import "Quest_of_MagicAppDelegate.h"
Quest_of_MagicAppDelegate *delegate;
@implementation LoadGameScreen


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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)theTableView {
    return 1;
}

// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)theTableView numberOfRowsInSection:(NSInteger)section {
    return [savedGames count];
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)theTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    GameData* data = [savedGames objectAtIndex:indexPath.row];
    NSString* title;
    if ([data.playergender isEqualToString:@"Male"]) {title = @"Lord";}
    if ([data.playergender isEqualToString:@"Female"]) {title = @"Lady";}
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %@ the %@, Level %d, Gold: %d",title,data.playername,data.playerrace,data.playerLV,data.gold];
    //cell.detailTextLabel.text = [NSString stringWithFormat:@"Level:%d Gold:%d Weapon:%@ Armor:%@ Trinket:%@",data.playerLV,data.gold,data.playerweapon,data.playerarmor,data.playertrinket];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    selectedRow = indexPath.row;
}

- (IBAction)playBtn:(id)sender {
    if (selectedRow > -1 && selectedRow < [savedGames count]) {
        
        TitleScreen* titleScreen = NULL;
        
        for (UIViewController* controller in [self.navigationController viewControllers]) {
            if ([controller isMemberOfClass:[TitleScreen class]]) {
                titleScreen = (TitleScreen*)controller;
            }
        }
        if (titleScreen != NULL) {
            [titleScreen stopTitle];
        }
        
        delegate.savedFile = [tableView indexPathForSelectedRow].row;
        
        delegate.gameData = [savedGames objectAtIndex:[tableView indexPathForSelectedRow].row];
        [delegate.gameData retain];
        [savedGames release];
        
        [delegate.gameData playSoundEffect:@"LVup"];
        
        //Play surface music
        [delegate.gameData playAudio:@"Surface Music"];
        
        //Switch to GameScreen
        GameScreen *controller = [[GameScreen alloc] initWithNibName:@"GameScreen" bundle:nil];
        [[self navigationController] pushViewController:controller animated:YES];
        [controller goToCard:delegate.gameData.card];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Please Select a Saved Game" message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
        [alert release];
    }
}
- (IBAction)deleteBtn:(id)sender {
    if (selectedRow > -1 && selectedRow < [savedGames count]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Are you sure you want to delete this saved game?" message:nil delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
        [alert show];
        [alert release];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Please Select a Saved Game" message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
        [alert release];
    }
}
- (IBAction)backBtn:(id)sender {
    [[self navigationController] popViewControllerAnimated:YES];
}

- (void)alertView:(UIAlertView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
            [savedGames removeObjectAtIndex:[tableView indexPathForSelectedRow].row];
            //Save
        [self saveObject:savedGames toFile:@"savedGames.sav"];
        [tableView reloadData];
    }
}
- (NSObject*)loadObjectFromFile:(NSString*)filePath {
    NSFileManager *manager = [NSFileManager defaultManager];
	NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *docDirectory = [path objectAtIndex:0];
	NSString *file = [docDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"/%@",filePath]];
    
    if([manager fileExistsAtPath:file]) {
        NSMutableData *data = [NSData dataWithContentsOfFile:file];
        NSKeyedUnarchiver *decode = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
        NSObject *object = [decode decodeObjectForKey:@"save"];
        [decode finishDecoding];
        [decode release];
        
        return object;
    }
    return nil;
}
- (void)saveObject:(NSObject*)object toFile:(NSString*)filePath {
	NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *docDirectory = [path objectAtIndex:0];
	NSString *file = [docDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"/%@",filePath]];
    
    NSMutableData *data = [NSMutableData data];
	NSKeyedArchiver *encode = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
    
	[encode encodeObject:object forKey:@"save"];
	[encode finishEncoding];
    
	[data writeToFile:file atomically:YES];
	[encode release];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    delegate = (Quest_of_MagicAppDelegate*)[[UIApplication sharedApplication] delegate];
    //Load
    savedGames = (NSMutableArray*)[self loadObjectFromFile:@"savedGames.sav"];
    if(!savedGames) {
        savedGames = [[NSMutableArray alloc] init];
    } else {
        [savedGames retain];
    }
    selectedRow = -1;
    [tableView reloadData];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

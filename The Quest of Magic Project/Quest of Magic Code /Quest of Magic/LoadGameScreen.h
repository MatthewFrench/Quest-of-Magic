//
//  LoadGameScreen.h
//  Quest of Magic
//
//  Created by Matthew French on 5/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameData.h"
#import "GameScreen.h"
#import "TitleScreen.h"

@interface LoadGameScreen : UIViewController {
    NSMutableArray *savedGames;
    IBOutlet UITableView* tableView;
    int selectedRow;
}
- (IBAction)playBtn:(id)sender;
- (IBAction)deleteBtn:(id)sender;
- (IBAction)backBtn:(id)sender;
- (NSObject*)loadObjectFromFile:(NSString*)filePath;
- (void)saveObject:(NSObject*)object toFile:(NSString*)filePath;
@end

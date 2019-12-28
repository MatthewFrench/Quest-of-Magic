//
//  TitleScreen.m
//  Quest of Magic
//
//  Created by Matthew French on 4/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TitleScreen.h"
#import "Quest_of_MagicAppDelegate.h"
Quest_of_MagicAppDelegate *titleScreenDelegate;
@implementation TitleScreen

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

- (IBAction)creditBtn:(id)sender {
    CreditScreen *controller = [[CreditScreen alloc] initWithNibName:@"CreditScreen" bundle:nil];
    [[self navigationController] pushViewController:controller animated:YES];
}
- (IBAction)playBtn:(id)sender {
    titleScreenDelegate.savedFile = -1;
    [animationTimer invalidate];
    [animationTimer release];
    animationTimer = NULL;
    [theAudio stop];
    [theAudio release];
    //Make story screen fade in.
    [UIView animateWithDuration:0.5 animations:^{
        self.view.alpha = 0.0;
    } completion:^(BOOL finished){
        StoryScreen *controller = [[StoryScreen alloc] initWithNibName:@"StoryScreen" bundle:nil];
        controller.view.alpha = 0.0;
        [UIView animateWithDuration:0.5 animations:^{
            controller.view.alpha = 1.0;
            [[self navigationController] pushViewController:controller animated:NO];
        } completion:^(BOOL finished){
            self.view.alpha = 1.0;
            [controller firstStoryLine];
        }];
    }];
}
- (IBAction)loadBtn:(id)sender {
    LoadGameScreen *controller = [[LoadGameScreen alloc] initWithNibName:@"LoadGameScreen" bundle:nil];
    [[self navigationController] pushViewController:controller animated:YES];
}
- (void)stopTitle {
    if (animationTimer != NULL) {[animationTimer invalidate];[animationTimer release]; animationTimer = NULL;}
    [theAudio stop];
    [theAudio release];
}
#pragma mark - View lifecycle

- (void)awakeFromNib {
    titleScreenDelegate = (Quest_of_MagicAppDelegate*)[[UIApplication sharedApplication] delegate];
     /*
      let videoURL = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
      let player = AVPlayer(url: videoURL!)
      let playerViewController = AVPlayerViewController()
      playerViewController.player = player
      self.present(playerViewController, animated: true) {
          playerViewController.player!.play()
      }
      */
    /*
    MPMoviePlayerController *player = [[MPMoviePlayerController alloc] initWithContentURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Roguesoft Intro Movie" ofType:@"m4v"]]];
    player.view.frame = CGRectMake(0, 0, 480, 320);
    [self.view addSubview:player.view];
    player.controlStyle = MPMovieControlStyleNone;
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(moviePlayBackDidFinish:) 
                                                 name:MPMoviePlayerPlaybackDidFinishNotification 
                                               object:player];
    
    playBtn.alpha = 0.0;
    loadBtn.alpha = 0.0;
    creditsBtn.alpha = 0.0;
    [player play];
     */
    [super viewDidLoad];
    [super awakeFromNib];
    [self moviePlayBackDidFinish:NULL];
}

- (void) moviePlayBackDidFinish:(NSNotification*)notification {
    /*
    MPMoviePlayerController *player = [notification object];
    [player.view removeFromSuperview];
    [player release];
     */
    
    //Load the title animations.
    titleAppear = [[NSMutableArray alloc] init];
    for (int i = 1; i <= 13; i++) {
        UIImage* image = [UIImage imageNamed:[NSString stringWithFormat:@"Appear %d.png",i]];
        [titleAppear addObject:image];
    }
    titleSparkle = [[NSMutableArray alloc] init];
    for (int i = 13; i <= 39; i++) {
        UIImage* image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.png",i]];
        [titleSparkle addObject:image];
    }
    defaultTitle = [UIImage imageNamed:@"Default Title.png"];
    [defaultTitle retain];
    [self runTitleAnimation];
}
- (void)runTitleAnimation {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Title Music" ofType:@"caf"];
    theAudio=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    theAudio.delegate=self;
    theAudio.numberOfLoops = -1;
    theAudio.volume = 1.0;
    [theAudio prepareToPlay];
    //[theAudio play];
    
    // load all the frames of our animation
    titleView.animationImages = titleAppear;
    titleView.image = defaultTitle;
    
    titleView.animationDuration = 0.75;
    // repeat the annimation forever
    titleView.animationRepeatCount = 1;
    // start animating
    [titleView startAnimating];
    animationTimer = [NSTimer scheduledTimerWithTimeInterval:0.75 target:self selector:@selector(animationTick) userInfo:nil repeats:NO];
    [animationTimer retain];
    animationRunning = TRUE;
    srand(time(NULL));
    [theAudio play];
    [UIView animateWithDuration:0.75 animations:^{creditsBtn.alpha = 1.0;playBtn.alpha = 1.0;loadBtn.alpha = 1.0;}];
}
- (void)animationTick {
    if (animationRunning) {
        animationRunning = FALSE;
        titleView.animationImages = nil;
        animationTimer = [NSTimer scheduledTimerWithTimeInterval:(rand()%100)/100+1.0 target:self selector:@selector(animationTick) userInfo:nil repeats:NO];
        [animationTimer retain];
    } else {
        int randomAnim = (rand()%11)+1; //Between 0 and 12 including 0
        int animStart,animEnd;

        if (randomAnim == 1) {animStart = 13;animEnd = 15;} else
        if (randomAnim == 2) {animStart = 16;animEnd = 18;} else
        if (randomAnim == 3) {animStart = 19;animEnd = 21;} else
        if (randomAnim == 4) {animStart = 22;animEnd = 24;} else
        if (randomAnim == 5) {animStart = 25;animEnd = 27;} else
        if (randomAnim == 6) {animStart = 28;animEnd = 29;} else
        if (randomAnim == 7) {animStart = 30;animEnd = 31;} else
        if (randomAnim == 8) {animStart = 32;animEnd = 33;} else
        if (randomAnim == 9) {animStart = 34;animEnd = 35;} else
        if (randomAnim == 10) {animStart = 36;animEnd = 37;} else
        if (randomAnim == 11) {animStart = 38;animEnd = 39;}
            
        NSMutableArray* animationImages = [[NSMutableArray alloc] init];
        for (int i = animEnd; i >=animStart; i-- ) {
            [animationImages addObject:[titleSparkle objectAtIndex:i-13]];
        }
        for (int i = animStart+1; i <=animEnd; i++ ) {
            [animationImages addObject:[titleSparkle objectAtIndex:i-13]];
        }
        
        titleView.animationImages = animationImages;
        [animationImages autorelease];
        
        titleView.animationRepeatCount = 1;
        titleView.animationDuration = 0.25;
        // start animating
        [titleView startAnimating];
        animationTimer = [NSTimer scheduledTimerWithTimeInterval:0.25 target:self selector:@selector(animationTick) userInfo:nil repeats:NO];
        [animationTimer retain];
        
        animationRunning = TRUE;
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

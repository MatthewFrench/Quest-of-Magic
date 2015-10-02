//
//  ArrowPad.m
//  Quest of Magic
//
//  Created by Matthew French on 10/13/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ArrowPad.h"
#import "GameScreen.h"
GameScreen* gameScreen;
@implementation ArrowPad

- (void)setGameScreen:(id)gs {
    gameScreen = (GameScreen*)gs;
    [self setMultipleTouchEnabled:FALSE];
    top = CGPointMake(66, 22);
    bottom = CGPointMake(66,110);
    left = CGPointMake(22,66);
    right = CGPointMake(110,66);
    topArrow=1;bottomArrow=2;leftArrow=3;rightArrow=4;
    closestArrow = 1;
    
    upImg = [UIImage imageNamed:@"upArrow.png"];
    upPressImg = [UIImage imageNamed:@"upArrowHover.png"];
    downImg = [UIImage imageNamed:@"downArrow.png"];
    downPressImg = [UIImage imageNamed:@"downArrowHover.png"];
    leftImg = [UIImage imageNamed:@"leftArrow.png"];
    leftPressImg = [UIImage imageNamed:@"leftArrowHover.png"];
    rightImg = [UIImage imageNamed:@"rightArrow.png"];
    rightPressImg = [UIImage imageNamed:@"rightArrowHover.png"];
    [upImg retain];
    [upPressImg retain];
    [downImg retain];
    [downPressImg retain];
    [leftImg retain];
    [leftPressImg retain];
    [rightImg retain];
    [rightPressImg retain];
}

- (void) dealloc {
    [upImg release];
    [upPressImg release];
    [downImg release];
    [downPressImg release];
    [leftImg release];
    [leftPressImg release];
    [rightImg release];
    [rightPressImg release];
    [super dealloc];
}

- (void) arrowTimer {
    if (touchDown) {
        [self sendMove];
    }
}
- (void)disable {
    touchDown = FALSE;
    if (touchTimer) {
        [touchTimer invalidate];
        touchTimer = nil;
    }
    //Undo all touched arrows
    upArrowView.image = upImg;
    downArrowView.image = downImg;
    leftArrowView.image = leftImg;
    rightArrowView.image = rightImg;
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self disable];
    UITouch *touch = [touches anyObject];
    touchPoint = [touch locationInView:self];
    [self updateClosestArrow];
    touchDown = TRUE;
    [self sendMove];
    touchTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/4.0 target:self selector:@selector(arrowTimer) userInfo:nil repeats:YES];
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    touchPoint = [touch locationInView:self];
    [self updateClosestArrow];
}
-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    touchPoint = [touch locationInView:self];
    [self updateClosestArrow];
    [self disable];
}

- (void)sendMove {
    [gameScreen keydown:closestArrow];
    if (closestArrow == topArrow) {upArrowView.image = upPressImg;} else {upArrowView.image = upImg;}
    if (closestArrow == bottomArrow) {downArrowView.image = downPressImg;} else {downArrowView.image=downImg;}
    if (closestArrow == leftArrow) {leftArrowView.image = leftPressImg;} else {leftArrowView.image = leftImg;}
    if (closestArrow == rightArrow) {rightArrowView.image =rightPressImg;}else{rightArrowView.image=rightImg;}
}

- (float)distanceBetweenTwoPoints:(CGPoint)point1 and:(CGPoint)point2 {
    float dx = point2.x - point1.x;
    float dy = point2.y - point1.y;
    return sqrt(dx*dx + dy*dy );
}

- (void)updateClosestArrow {
    //Look at each arrow position compared to tap position, closest is the arrow tapped
    int topDist = [self distanceBetweenTwoPoints:top and:touchPoint];
    int bottomDist = [self distanceBetweenTwoPoints:bottom and:touchPoint];
    int leftDist = [self distanceBetweenTwoPoints:left and:touchPoint];
    int rightDist = [self distanceBetweenTwoPoints:right and:touchPoint];
    if (topDist <= bottomDist && topDist <= leftDist && topDist <= rightDist) {closestArrow = topArrow;} else
    if (bottomDist <= topDist && bottomDist <= leftDist && bottomDist <= rightDist) {closestArrow = bottomArrow;} else
    if (leftDist <= topDist && leftDist <= bottomDist && leftDist <= rightDist) {closestArrow = leftArrow;} else
    if (rightDist <= topDist && rightDist <= bottomDist && rightDist <= leftDist) {closestArrow = rightArrow;}
}


@end

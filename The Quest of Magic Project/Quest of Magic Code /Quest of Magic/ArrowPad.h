//
//  ArrowPad.h
//  Quest of Magic
//
//  Created by Matthew French on 10/13/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArrowPad : UIView{
    BOOL touchDown;
    NSTimer* touchTimer;
    CGPoint touchPoint;
    
    CGPoint top,bottom,left,right;
    int closestArrow;
    int topArrow,bottomArrow,leftArrow,rightArrow;
    
    IBOutlet UIImageView* upArrowView, *downArrowView, *leftArrowView, *rightArrowView;
    
    UIImage* upImg, *upPressImg, *downImg, *downPressImg, *leftImg, *leftPressImg, *rightImg, *rightPressImg;
}
- (void)updateClosestArrow;
- (void)arrowTimer;
- (void)sendMove;
- (float)distanceBetweenTwoPoints:(CGPoint)point1 and:(CGPoint)point2;

- (void)setGameScreen:(id)gs;

- (void)disable;

@end
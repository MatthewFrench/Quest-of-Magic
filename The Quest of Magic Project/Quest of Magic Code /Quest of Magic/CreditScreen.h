//
//  CreditScreen.h
//  Quest of Magic
//
//  Created by Matthew French on 4/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CreditScreen : UIViewController {
    IBOutlet UIScrollView* scrollView;
    IBOutlet UIImageView* imageView;
}
- (IBAction)back:(id)sender;
@end

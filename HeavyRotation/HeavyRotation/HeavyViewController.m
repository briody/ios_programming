//
//  HeavyViewController.m
//  HeavyRotation
//
//  Created by briody on 2/28/13.
//  Copyright (c) 2013 Briody. All rights reserved.
//

#import "HeavyViewController.h"

@implementation HeavyViewController


//Set the autoresizing mask programmatically
//Views aren't created when controller is initialized
//So we want to do this in ViewDidLoad not in init

//Silver Challenge

CGFloat xMargin = 20.0;
CGFloat yMargin = 30.0;

- (void)viewDidLoad
{
    //Gold Challenge
    [_moveButton setCenter:CGPointMake(xMargin + _moveButton.frame.size.width/2.0, yMargin)];
    
    //The Struts actually 
    //Image view
    [_imageView setAutoresizingMask:UIViewAutoresizingFlexibleHeight
     | UIViewAutoresizingFlexibleWidth];
    
    //Slider
    [_topSlider setAutoresizingMask:
     UIViewAutoresizingFlexibleBottomMargin
     | UIViewAutoresizingFlexibleWidth];
    
    //Left Button
    [_leftButton setAutoresizingMask:UIViewAutoresizingFlexibleRightMargin
     | UIViewAutoresizingFlexibleTopMargin];
    
    //Right Button
    [_rightButton setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin
     | UIViewAutoresizingFlexibleTopMargin];
}

//Deprecated
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)x
{
    //Return YES if incoming orientation is Portrait
    //or either of the Landscapes, otherwise, return NO
    return (x == UIInterfaceOrientationPortrait
            || UIInterfaceOrientationIsLandscape(x));
}

//Gold Challenge
- (void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)x duration:(NSTimeInterval)duration
{
    CGRect bounds = [[self view] bounds];
    // If the orientation is rotating to Portrait mode....
    if (UIInterfaceOrientationIsPortrait(x)) {
        [_moveButton setCenter:CGPointMake(xMargin + _moveButton.frame.size.width/2.0, yMargin)];
    } else {
        [_moveButton setCenter:CGPointMake(bounds.size.width - xMargin - _moveButton.frame.size.width/2.0, yMargin)];
    }
}



@end

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
- (void)viewDidLoad
{
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




@end

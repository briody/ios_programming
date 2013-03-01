//
//  HeavyViewController.m
//  HeavyRotation
//
//  Created by briody on 2/28/13.
//  Copyright (c) 2013 Briody. All rights reserved.
//

#import "HeavyViewController.h"

@implementation HeavyViewController

//Deprecated
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)x
{
    //Return YES if incoming orientation is Portrait
    //or either of the Landscapes, otherwise, return NO
    return (x == UIInterfaceOrientationPortrait
            || UIInterfaceOrientationIsLandscape(x));
}
@end

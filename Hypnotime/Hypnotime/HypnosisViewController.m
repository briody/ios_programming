//
//  HypnosisViewController.m
//  Hypnotime
//
//  Created by briody on 2/25/13.
//  Copyright (c) 2013 Briody. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (void) loadView
{
    //Create view
    CGRect frame = [[UIScreen mainScreen] bounds];
    HypnosisView *v = [[HypnosisView alloc] initWithFrame:frame];
    
    //Set it as *the* view of this view controller
    [self setView:v];
}

@end

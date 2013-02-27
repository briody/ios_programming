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

- (void) viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"HypnosisViewController loaded its view.");
}

-(id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle
{
    //Call the superclass's designated initializer
    self = [super initWithNibName:nil bundle:nil];
    if(self) {
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"Hypnosis" ];
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        [tbi setImage:i];
    }
    return self;
}

- (void) loadView
{
    //Create view
    CGRect frame = [[UIScreen mainScreen] bounds];
    HypnosisView *v = [[HypnosisView alloc] initWithFrame:frame];
    
    //Set it as *the* view of this view controller
    [self setView:v];
}

@end

//
//  TimeViewController.m
//  Hypnotime
//
//  Created by briody on 2/25/13.
//  Copyright (c) 2013 Briody. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"TimeViewController loaded its view.");
    [[self view] setBackgroundColor:[UIColor greenColor]];
}


-(id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle
{
    
    NSBundle *appBundle = [NSBundle mainBundle];
    self = [super initWithNibName:@"TimeViewController" bundle:appBundle];
    
    if(self) {
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"Time" ];
        UIImage *i = [UIImage imageNamed:@"Time.png"];
        [tbi setImage:i];
    }
    return self;
}

 - (IBAction)showCurrentTime:(id)sender
{
    NSDate *now = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    
    [timeLabel setText:[formatter stringFromDate:now]];
}
@end

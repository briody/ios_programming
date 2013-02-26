//
//  TimeViewController.h
//  Hypnotime
//
//  Created by briody on 2/25/13.
//  Copyright (c) 2013 Briody. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeViewController : UIViewController
{
    IBOutlet UILabel *timeLabel;
}
- (IBAction)showCurrentTime:(id)sender;
@end

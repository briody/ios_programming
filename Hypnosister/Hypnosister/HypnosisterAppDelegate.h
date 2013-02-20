//
//  HypnosisterAppDelegate.h
//  Hypnosister
//
//  Created by briody on 2/15/13.
//  Copyright (c) 2013 Briody. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HypnosisView.h"

@interface HypnosisterAppDelegate : UIResponder <UIApplicationDelegate, UIScrollViewDelegate>
{
    HypnosisView *view;
}

@property (strong, nonatomic) UIWindow *window;

@end

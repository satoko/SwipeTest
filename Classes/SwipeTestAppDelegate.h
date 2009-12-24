//
//  SwipeTestAppDelegate.h
//  SwipeTest
//
//  Created by satoko on 09/12/23.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SwipeTestViewController;

@interface SwipeTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SwipeTestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SwipeTestViewController *viewController;

@end


//
//  SwipeTestAppDelegate.m
//  SwipeTest
//
//  Created by satoko on 09/12/23.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "SwipeTestAppDelegate.h"
#import "SwipeTestViewController.h"

@implementation SwipeTestAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end

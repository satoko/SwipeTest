//
//  SwipeView.h
//  SwipeTest
//
//  Created by satoko on 09/12/24.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SwipeView : UIView {
	CGPoint gestureStartPoint;
	UILabel *whataction;
}

@property (nonatomic, retain) UILabel *whataction;

@end

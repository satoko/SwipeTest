//
//  SwipeView.m
//  SwipeTest
//
//  Created by satoko on 09/12/24.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "SwipeView.h"


@implementation SwipeView

@synthesize whataction;

//NOTE: custmize view through loading view via nib
-(id)initWithCoder:(NSCoder*)coder
{
	if(self = [super initWithCoder:coder]){
		whataction = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 44)];
		whataction.text = @"test";
		[self addSubview:whataction]; 			
	}
	return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch *touch = [touches anyObject];
	gestureStartPoint = [touch locationInView:self];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch *touch = [touches anyObject];
	CGPoint currentPosition = [touch locationInView:self];
	if (currentPosition.x - 30 > gestureStartPoint.x) {
		[whataction setText:@"FAR RIGHT"];
	}
	else if (currentPosition.x > gestureStartPoint.x) {
		[whataction setText:@"RIGHT"];
	}
	if (currentPosition.x + 30 < gestureStartPoint.x) {
		[whataction setText:@"FAR LEFT"];
	}
	else if (currentPosition.x < gestureStartPoint.x) {
		[whataction setText:@"LEFT"];
	}
}	

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
       // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
}


- (void)dealloc {
	[whataction release];
	
    [super dealloc];
}


@end

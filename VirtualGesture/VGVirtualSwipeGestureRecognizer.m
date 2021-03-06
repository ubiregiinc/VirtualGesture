//
//  VGVirtualSwipeGestureRecognizer.m
//  VirtualGesture
//
//  Created by 宗太郎 松本 on 12/05/01.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "VGVirtualSwipeGestureRecognizer.h"

@implementation VGVirtualSwipeGestureRecognizer {
	CGPoint point_;
}

#pragma mark - UISwipeGestureRecognizer

- (UIGestureRecognizerState)state {
	return UIGestureRecognizerStateEnded;
}

- (CGPoint)locationInView:(UIView *)view {
	return [view convertPoint:self->point_ toView:view];
}

- (CGPoint)locationOfTouch:(NSUInteger)touchIndex inView:(UIView *)view {
	return [view convertPoint:self->point_ toView:view];
}

// Needed by UITableView
- (CGPoint)startPoint {
	return self->point_;
}

#pragma mark -

- (void)setPoint:(CGPoint)point {
	self->point_ = point;
}

@end

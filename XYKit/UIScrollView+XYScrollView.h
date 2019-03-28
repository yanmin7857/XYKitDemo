//
//  UIScrollView+XYScrollView.h
//  XYKit
//  https://github.com/remember17/XYKit
//  Created by 吴浩 on 2017/6/7.


#import <UIKit/UIKit.h>

@interface UIScrollView (XYScrollView)

- (void)scrollToTop;

- (void)scrollToBottom;

- (void)scrollToLeft;

- (void)scrollToRight;

- (void)scrollToTopAnimated:(BOOL)animated;

- (void)scrollToBottomAnimated:(BOOL)animated;

- (void)scrollToLeftAnimated:(BOOL)animated;

- (void)scrollToRightAnimated:(BOOL)animated;

@end

//
//  UINavigationController+XYNavigationController.h
//  XYKit
//  https://github.com/remember17/XYKit
//  Created by 吴浩 on 2017/6/7.


#import <UIKit/UIKit.h>

@interface UINavigationController (XYNavigationController)

/** 寻找Navigation中的某个viewcontroler */
- (id)findViewController:(Class)className;

/** 判断是否只有一个RootViewController */
- (BOOL)isOnlyContainRootViewController;

/** RootViewController */
- (UIViewController *)rootViewController;

/** 返回指定的viewcontroler */
- (NSArray *)popToViewControllerWithClassName:(Class)className animated:(BOOL)animated;

/** pop回第n层 */
- (NSArray *)popToViewControllerWithLevel:(NSInteger)level animated:(BOOL)animated;

/** 以某种动画形式push */
- (void)pushViewController:(UIViewController *)controller withTransition:(UIViewAnimationTransition)transition;

/** 以某种动画形式pop */
- (UIViewController *)popViewControllerWithTransition:(UIViewAnimationTransition)transition;

@end

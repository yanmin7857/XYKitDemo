//
//  UIViewController+XYVC.h
//  XYKit
//  https://github.com/yanmin7857/XYKitDemo
//  Created by 小羊 on 2019/3/28.


#import <UIKit/UIKit.h>

@interface UIViewController (XYVC)

/** 找到当前视图控制器 */
+ (UIViewController *)wh_currentViewController;

/** 找到当前导航控制器 */
+ (UINavigationController *)wh_currentNavigatonController;

/** 在当前视图控制器中添加子控制器，将子控制器的视图添加到view中 */
- (void)wh_addChildController:(UIViewController *)childController intoView:(UIView *)view;

@end

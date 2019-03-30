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

/**
 * push跳转页面
 * @param name 类名
 * @param param 参数
 * @param completion block反向回调
 */
- (void)pushController:(NSString *)name params:(NSDictionary *)param completion:(void (^)(id result))completion;

/**
 * 模态跳转页面
 * @param name 类名
 * @param param 参数
 * @param completion block反向回调
 */
- (void)presentController:(NSString *)name params:(NSDictionary *)param completion:(void (^)(id result))completion;

/**
 * block回调
 */
@property (nonatomic,copy) void(^completion)(id result);

/**
 * 参数
 */
@property (nonatomic,strong) NSDictionary *param;
@end

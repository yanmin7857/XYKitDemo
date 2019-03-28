//
//  XYMethods.h
//  XYKit
//  https://github.com/yanmin7857/XYKitDemo
//  Created by 小羊 on 2019/3/28.


#import <UIKit/UIKit.h>

@interface XYMethods : UIViewController

/** 更改iOS状态栏的颜色 */
+ (void)wh_setStatusBarBackgroundColor:(UIColor *)color;

/** 为控制器添加背景图片 */
+ (void)wh_addBackgroundImageWithImageName:(NSString *)imageName forViewController:(UIViewController *)viewController;

/** 获取数组中的最大值 */
+ (CGFloat) wh_maxNumberFromArray:(NSArray *)array;

/** 获取数组中的最小值 */
+ (CGFloat) wh_minNumberFromArray:(NSArray *)array;

/** 获取数组的和 */
+ (CGFloat) wh_sumNumberFromArray:(NSArray *)array;

/** 获取数组平均值 */
+ (CGFloat) wh_averageNumberFromArray:(NSArray *)array;

/** 可用硬件容量 */
+ (CGFloat) wh_usableHardDriveCapacity;

/** 硬件总容量 */
+ (CGFloat) wh_allHardDriveCapacity;

@end

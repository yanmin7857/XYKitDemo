//
//  UIColor+XYColor.h
//  XYKit
//  https://github.com/yanmin7857/XYKitDemo
//  Created by 小羊 on 2019/3/28.


#import <UIKit/UIKit.h>

@interface UIColor (XYColor)

/** 16进制数字创建颜色 */
+ (instancetype)wh_colorWithHex:(uint32_t)hex;

/** 随机色 */
+ (instancetype)wh_randomColor;

/** RGB颜色 */
+ (instancetype)wh_colorWithRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue;

/**
 十六进制字符串显示颜色
 
 @param color 十六进制字符串
 @param alpha 透明度
 @return 颜色
 */
+ (UIColor *)wh_colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

/**
 *  @brief  渐变颜色
 *
 *  @param fromColor  开始颜色
 *  @param toColor    结束颜色
 *  @param height     渐变高度
 *
 *  @return 渐变颜色
 */
+ (UIColor*)wh_gradientFromColor:(UIColor*)fromColor toColor:(UIColor*)toColor withHeight:(CGFloat)height;

@end

//
//  UIImageView+XYImageView.h
//  XYKit
//  https://github.com/yanmin7857/XYKitDemo
//  Created by 小羊 on 2019/3/28.


#import <UIKit/UIKit.h>

@interface UIImageView (XYImageView)

/** 快速创建imageView */
+(instancetype)wh_imageViewWithPNGImage:(NSString *)imageName frame:(CGRect)frame;

@end

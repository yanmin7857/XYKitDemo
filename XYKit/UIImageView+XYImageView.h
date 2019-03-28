//
//  UIImageView+XYImageView.h
//  XYKit
//  https://github.com/remember17/XYKit
//  Created by 吴浩 on 2017/6/7.


#import <UIKit/UIKit.h>

@interface UIImageView (XYImageView)

/** 快速创建imageView */
+(instancetype)wh_imageViewWithPNGImage:(NSString *)imageName frame:(CGRect)frame;

@end

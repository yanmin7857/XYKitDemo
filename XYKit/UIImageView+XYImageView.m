//
//  UIImageView+XYImageView.m
//  XYKit
//  https://github.com/remember17/XYKit
//  Created by 吴浩 on 2017/6/7.
//  Copyright © 2017年 remember17. All rights reserved.
//

#import "UIImageView+XYImageView.h"

@implementation UIImageView (XYImageView)

+(instancetype)wh_imageViewWithPNGImage:(NSString *)imageName frame:(CGRect)frame {
    UIImageView *imageV=[[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
    imageV.frame=frame;
    return imageV;
}

@end

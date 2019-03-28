//
//  CALayer+XYLayer.h
//  XYKit
//  https://github.com/remember17/XYKit
//  Created by 小羊 on 2019/3/28.


#import "CALayer+XYLayer.h"

@implementation CALayer (XYLayer)

-(void)shake{
    CAKeyframeAnimation *keyAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation.x"];
    CGFloat shakeWidth = 16;
    keyAnimation.values = @[@(-shakeWidth),@(0),@(shakeWidth),@(0),@(-shakeWidth),@(0),@(shakeWidth),@(0)];
    //时长
    keyAnimation.duration = .1f;
    //重复
    keyAnimation.repeatCount =2;
    //移除
    keyAnimation.removedOnCompletion = YES;
    [self addAnimation:keyAnimation forKey:@"shake"];
}

@end

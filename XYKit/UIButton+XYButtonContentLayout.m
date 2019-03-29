//
//  UIButton+XYButtonContentLayout.m
//  XYUIKit

#import "UIButton+XYButtonContentLayout.h"
#import <objc/runtime.h>

NS_ASSUME_NONNULL_BEGIN

static NSString * const kbuttonContentLayoutTypeKey = @"XYUI_buttonContentLayoutTypeKey";
static NSString * const kpaddingKey = @"XYUI_paddingKey";
static NSString * const kpaddingInsetKey = @"XYUI_paddingInsetKey";


@implementation UIButton (XYButtonContentLayout)

- (void)setupButtonLayout{
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    CGFloat image_w = self.imageView.frame.size.width;
    CGFloat image_h = self.imageView.frame.size.height;
    
    CGFloat title_w = self.titleLabel.frame.size.width;
    CGFloat title_h = self.titleLabel.frame.size.height;
    
    if ([UIDevice currentDevice].systemVersion.floatValue >= 8.0){
        // 由于iOS8中titleLabel的size为0，用下面的这种设置
        title_w = self.titleLabel.intrinsicContentSize.width;
        title_h = self.titleLabel.intrinsicContentSize.height;
    }
    
    UIEdgeInsets imageEdge = UIEdgeInsetsZero;
    UIEdgeInsets titleEdge = UIEdgeInsetsZero;
    
    if (self.XYUI_paddingInset == 0){
        self.XYUI_paddingInset = 5;
    }
    
    switch (self.XYUI_buttonContentLayoutType) {
        case XYButtonContentLayoutStyleNormal:{
            titleEdge = UIEdgeInsetsMake(0, self.XYUI_padding, 0, 0);
            imageEdge = UIEdgeInsetsMake(0, 0, 0, self.XYUI_padding);
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        }
            break;
        case XYButtonContentLayoutStyleCenterImageRight:{
            titleEdge = UIEdgeInsetsMake(0, -image_w - self.XYUI_padding, 0, image_w);
            imageEdge = UIEdgeInsetsMake(0, title_w + self.XYUI_padding, 0, -title_w);
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        }
            break;
        case XYButtonContentLayoutStyleCenterImageTop:{
            titleEdge = UIEdgeInsetsMake(0, -image_w, -image_h - self.XYUI_padding, 0);
            imageEdge = UIEdgeInsetsMake(-title_h - self.XYUI_padding, 0, 0, -title_w);
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        }
            break;
        case XYButtonContentLayoutStyleCenterImageBottom:{
            titleEdge = UIEdgeInsetsMake(-image_h - self.XYUI_padding, -image_w, 0, 0);
            imageEdge = UIEdgeInsetsMake(0, 0, -title_h - self.XYUI_padding, -title_w);
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        }
            break;
        case XYButtonContentLayoutStyleLeftImageLeft:{
            titleEdge = UIEdgeInsetsMake(0, self.XYUI_padding + self.XYUI_paddingInset, 0, 0);
            imageEdge = UIEdgeInsetsMake(0, self.XYUI_paddingInset, 0, 0);
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        }
            break;
        case XYButtonContentLayoutStyleLeftImageRight:{
            titleEdge = UIEdgeInsetsMake(0, -image_w + self.XYUI_paddingInset, 0, 0);
            imageEdge = UIEdgeInsetsMake(0, title_w + self.XYUI_padding + self.XYUI_paddingInset, 0, 0);
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        }
            break;
        case XYButtonContentLayoutStyleRightImageLeft:{
            imageEdge = UIEdgeInsetsMake(0, 0, 0, self.XYUI_padding + self.XYUI_paddingInset);
            titleEdge = UIEdgeInsetsMake(0, 0, 0, self.XYUI_paddingInset);
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        }
            break;
        case XYButtonContentLayoutStyleRightImageRight:{
            titleEdge = UIEdgeInsetsMake(0, -self.frame.size.width / 2, 0, image_w + self.XYUI_padding + self.XYUI_paddingInset);
            imageEdge = UIEdgeInsetsMake(0, 0, 0, -title_w + self.XYUI_paddingInset);
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        }
            break;
        default:break;
    }
    self.imageEdgeInsets = imageEdge;
    self.titleEdgeInsets = titleEdge;
    [self setNeedsDisplay];
}


#pragma mark - SET
- (void)setXYUI_buttonContentLayoutType:(XYButtonContentLayoutStyle)XYUI_buttonContentLayoutType{
    [self willChangeValueForKey:kbuttonContentLayoutTypeKey];
    objc_setAssociatedObject(self, &kbuttonContentLayoutTypeKey,
                             @(XYUI_buttonContentLayoutType),
                             OBJC_ASSOCIATION_ASSIGN);
    [self didChangeValueForKey:kbuttonContentLayoutTypeKey];
    [self setupButtonLayout];
}

- (XYButtonContentLayoutStyle)XYUI_buttonContentLayoutType{
    return [objc_getAssociatedObject(self, &kbuttonContentLayoutTypeKey) integerValue];
}

- (void)setXYUI_padding:(CGFloat)XYUI_padding{
    [self willChangeValueForKey:kpaddingKey];
    objc_setAssociatedObject(self, &kpaddingKey,
                             @(XYUI_padding),
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self didChangeValueForKey:kpaddingKey];

    [self setupButtonLayout];
}

- (CGFloat)XYUI_padding{
    return [objc_getAssociatedObject(self, &kpaddingKey) floatValue];
}

- (void)setXYUI_paddingInset:(CGFloat)XYUI_paddingInset{
    [self willChangeValueForKey:kpaddingInsetKey];
    objc_setAssociatedObject(self, &kpaddingInsetKey,
                             @(XYUI_paddingInset),
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self didChangeValueForKey:kpaddingInsetKey];
    [self setupButtonLayout];
}

- (CGFloat)XYUI_paddingInset{
    return [objc_getAssociatedObject(self, &kpaddingInsetKey) floatValue];
}


@end
NS_ASSUME_NONNULL_END


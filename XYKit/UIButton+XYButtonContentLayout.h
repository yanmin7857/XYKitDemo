//
//  UIView+XYRectCorner.h
//  XYUIKit


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 button 的样式，以图片为基准
 */
typedef NS_ENUM(NSInteger, XYButtonContentLayoutStyle) {
    XYButtonContentLayoutStyleNormal = 0,       // 内容居中-图左文右
    XYButtonContentLayoutStyleCenterImageRight, // 内容居中-图右文左
    XYButtonContentLayoutStyleCenterImageTop,   // 内容居中-图上文下
    XYButtonContentLayoutStyleCenterImageBottom,// 内容居中-图下文上
    XYButtonContentLayoutStyleLeftImageLeft,    // 内容居左-图左文右
    XYButtonContentLayoutStyleLeftImageRight,   // 内容居左-图右文左
    XYButtonContentLayoutStyleRightImageLeft,   // 内容居右-图左文右
    XYButtonContentLayoutStyleRightImageRight,  // 内容居右-图右文左
};

@interface UIButton (XYButtonContentLayout)

/**
 button 的布局样式，文字、字体大小、图片等参数一定要在其之前设置，方便计算
 */
@property(nonatomic, assign) XYButtonContentLayoutStyle XYUI_buttonContentLayoutType;

/*!
 *  图文间距，默认为：0
 */
@property (nonatomic, assign) CGFloat XYUI_padding;

/*!
 *  图文边界的间距，默认为：5
 */
@property (nonatomic, assign) CGFloat XYUI_paddingInset;





@end
NS_ASSUME_NONNULL_END



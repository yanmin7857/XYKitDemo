//
//  UIView+XYView.h
//  XYKit
//  https://github.com/yanmin7857/XYKitDemo
//  Created by 小羊 on 2019/3/28.


#import <UIKit/UIKit.h>

typedef void (^TapActionBlock)(UITapGestureRecognizer *gestureRecoginzer);
typedef void (^LongPressActionBlock)(UILongPressGestureRecognizer *gestureRecoginzer);

@interface UIView (XYView)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;

/** 截取成图片 */
- (UIImage *)wh_snapshotImage;

/** 触发点击事件 */
- (void)wh_addTapActionWithBlock:(TapActionBlock)block;

/** 触发长按事件 */
- (void)wh_addLongPressActionWithBlock:(LongPressActionBlock)block;

/** 找到指定类名的subView */
- (UIView *)wh_findSubViewWithClass:(Class)clazz;

/** 找到指定类名的所有subView */
- (NSArray *)wh_findAllSubViewsWithClass:(Class)clazz;

/** 找到指定类名的superView对象 */
- (UIView *)wh_findSuperViewWithClass:(Class)clazz;

/** 找到view上的第一响应者 */
- (UIView *)wh_findFirstResponder;

/** 找到当前view所在的viewcontroler */
- (UIViewController *)wh_findViewController;

/** 所有子View */
- (NSArray *)wh_allSubviews;

/** 移除所有子视图 */
- (void)wh_removeAllSubviews;

@property (assign,nonatomic) IBInspectable NSInteger cornerRadius;
@property (assign,nonatomic) IBInspectable BOOL masksToBounds;
@property (assign,nonatomic) IBInspectable NSInteger borderWidth;
@property (strong,nonatomic) IBInspectable NSString  *borderHexRgb;
@property (strong,nonatomic) IBInspectable UIColor   *borderColor;

+ (instancetype)wh_loadViewFromNib;
+ (instancetype)wh_loadViewFromNibWithName:(NSString *)nibName;
+ (instancetype)wh_loadViewFromNibWithName:(NSString *)nibName owner:(id)owner;
+ (instancetype)wh_loadViewFromNibWithName:(NSString *)nibName owner:(id)owner bundle:(NSBundle *)bundle;

@end

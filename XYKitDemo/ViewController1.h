//
//  ViewController1.h
//  XYKitDemo
//
//  Created by xiaoyang on 2019/3/29.
//  Copyright © 2019 xiaoyang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewController1 : UIViewController

@property (nonatomic,copy) void(^completion)(id result);

@end

NS_ASSUME_NONNULL_END

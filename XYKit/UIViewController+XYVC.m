//
//  UIViewController+XYVC.m
//  XYKit
//  https://github.com/yanmin7857/XYKitDemo
//  Created by 小羊 on 2019/3/28.
//  Copyright © 2017年 remember17. All rights reserved.
//

#import "UIViewController+XYVC.h"
#import "MGJRouter.h"
#import <objc/runtime.h>

@implementation UIViewController (XYVC)
static const void * tg_name = @"param";
static const void * bc_name = @"block";

#define TEMPLATE_URL @"mgj://search/:keyword/:present"
+ (void)load{
    [MGJRouter registerURLPattern:TEMPLATE_URL  toHandler:^(NSDictionary *routerParameters) {
        NSLog(@"routerParameters[keyword]:%@ %@", routerParameters[@"keyword"],routerParameters); // Hangzhou
        
        UIViewController *vc = [[NSClassFromString(routerParameters[@"keyword"]) alloc] init];
        vc.param = [routerParameters objectForKey:MGJRouterParameterUserInfo];
        vc.completion = routerParameters[MGJRouterParameterCompletion];
        
        if ([routerParameters[@"present"] integerValue] == 1) {
            [[self wh_currentViewController] presentViewController:vc animated:YES completion:nil];
        }else{
            [[self wh_currentNavigatonController] pushViewController:vc animated:YES];
        }
        
    }];
}

//set方法的实现
-(void)setParam:(NSDictionary *)param{
    objc_setAssociatedObject(self, tg_name, param, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

//get方法的实现
- (NSDictionary *)param{
    return objc_getAssociatedObject(self,tg_name);
}

- (void)pushController:(NSString *)name params:(NSDictionary *)param completion:(void (^)(id result))completion{
    
    [MGJRouter openURL:[MGJRouter generateURLWithPattern:TEMPLATE_URL parameters:@[name]]                                      withUserInfo:param
            completion:^(id result) {
                if (completion) {
                    completion(result);
                }
    }];
}

- (void)presentController:(NSString *)name params:(NSDictionary *)param completion:(void (^)(id result))completion{

    [MGJRouter openURL:[MGJRouter generateURLWithPattern:TEMPLATE_URL parameters:@[name,@"1"]]                                      withUserInfo:param
            completion:^(id result) {
                if (completion) {
                    completion(result);
                }
            }];
}

+ (UIViewController *)findBestViewController:(UIViewController *)vc
{
    if (vc.presentedViewController)
    {
        return [self findBestViewController:vc.presentedViewController];
    }
    else if ([vc isKindOfClass:[UISplitViewController class]])
    {
        UISplitViewController* svc = (UISplitViewController*) vc;
        if (svc.viewControllers.count > 0)
        {
            return [self findBestViewController:svc.viewControllers.lastObject];
        }
        else
        {
            return vc;
        }
        
    }
    else if ([vc isKindOfClass:[UINavigationController class]])
    {
        UINavigationController* svc = (UINavigationController*) vc;
        if (svc.viewControllers.count > 0)
        {
            return [self findBestViewController:svc.topViewController];
        }
        else
        {
            return vc;
        }
        
    }
    else if ([vc isKindOfClass:[UITabBarController class]])
    {
        UITabBarController* svc = (UITabBarController *)vc;
        if (svc.viewControllers.count > 0)
        {
            return [self findBestViewController:svc.selectedViewController];
        }
        else
        {
            return vc;
        }
        
    }
    else
    {
        return vc;
    }
}

+ (UIViewController *)wh_currentViewController
{
    UIViewController *viewController = [[UIApplication sharedApplication].delegate window].rootViewController;
    
    return [UIViewController findBestViewController:viewController];
}

+ (UINavigationController *)wh_currentNavigatonController {
    
    UIViewController * currentViewController =  [UIViewController wh_currentViewController];
    
    return currentViewController.navigationController;
}

- (void)wh_addChildController:(UIViewController *)childController intoView:(UIView *)view  {
    
    [self addChildViewController:childController];
    
    [view addSubview:childController.view];
    
    [childController didMoveToParentViewController:self];
}

@end

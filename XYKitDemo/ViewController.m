//
//  ViewController.m
//  XYKitDemo
//
//  Created by xiaoyang on 2019/3/28.
//  Copyright © 2019 xiaoyang. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+XYVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
//    //可反向传值
//    [self pushController:@"ViewController1" params:nil completion:^(id result) {
//        NSLog(@"路由能回调了 %@",result);
//    }];
    
    //传参跳转
    [self pushController:@"ViewController1" params:@{@"11":@"123",@"22":@{@"333":@"skfs"}} completion:nil];
    
//    //模态跳转
//    [self presentController:@"ViewController1" params:@{@"11":@"123",@"22":@{@"333":@"skfs"}} completion:^(id result) {
//        NSLog(@"路由能回调了 %@",result);
//    }];
    
//    //模态跳转
//    [self presentController:@"ViewController1" params:@{@"11":@"123",@"22":@{@"333":@"skfs"}} completion:nil];
}

@end

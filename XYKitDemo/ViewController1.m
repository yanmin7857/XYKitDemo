//
//  ViewController1.m
//  XYKitDemo
//
//  Created by xiaoyang on 2019/3/29.
//  Copyright © 2019 xiaoyang. All rights reserved.
//

#import "ViewController1.h"
#import "UIViewController+XYVC.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    NSLog(@"参数%@", self.param);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.completion(@"gg");
}
@end

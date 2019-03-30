# XYKit 基础分类收集
## 可支持pod
## Pod 'XY_Kit'
## 集成蘑菇街 MGJRouter 封装UIViewController+XYVC.h分类
### 页面跳转再也不需要引入文件啦！
```
/** 找到当前视图控制器 */
+ (UIViewController *)wh_currentViewController;

/** 找到当前导航控制器 */
+ (UINavigationController *)wh_currentNavigatonController;

/** 在当前视图控制器中添加子控制器，将子控制器的视图添加到view中 */
- (void)wh_addChildController:(UIViewController *)childController intoView:(UIView *)view;

/**
* push跳转页面
* @param name 类名
* @param param 参数
* @param completion block反向回调
*/
- (void)pushController:(NSString *)name params:(NSDictionary *)param completion:(void (^)(id result))completion;

/**
* 模态跳转页面
* @param name 类名
* @param param 参数
* @param completion block反向回调
*/
- (void)presentController:(NSString *)name params:(NSDictionary *)param completion:(void (^)(id result))completion;

/**
* block回调
*/
@property (nonatomic,copy) void(^completion)(id result);

/**
* 参数
*/
@property (nonatomic,strong) NSDictionary *param;
```

## 使用方法

```
// 控制器中使用
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
```

// ViewController1使用
```
- (void)viewDidLoad {
[super viewDidLoad];
// Do any additional setup after loading the view.
self.view.backgroundColor = [UIColor whiteColor];
NSLog(@"参数%@", self.param);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//需要回调时使用
self.completion(@"gg");
}
```


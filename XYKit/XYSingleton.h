
//
//  XYSingleton.h
//  XYKit
//  https://github.com/remember17/XYKit
//  Created by 吴浩 on 2017/7/21.


#define XYSingletonH(ClassName) +(instancetype) share##ClassName;

#define XYSingletonM(ClassName) static id _instance;\
\
+(instancetype)allocWithZone:(struct _NSZone *)zone\
{\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instance = [super allocWithZone:zone];\
});\
\
return _instance;\
}\
\
\
+(instancetype)share##ClassName\
{\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instance = [[self alloc] init];\
});\
\
return _instance;\
}\
\
\
-(id)copyWithZone:(NSZone *)zone\
{\
return _instance;\
}\
\
\
- (id)mutableCopyWithZone:(nullable NSZone *)zone\
{\
return _instance;\
}

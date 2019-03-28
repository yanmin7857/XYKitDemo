//
//  NSDictionary+XYDictionary.h
//  XYKit
//  https://github.com/yanmin7857/XYKitDemo
//  Created by 小羊 on 2019/3/28.


#import <Foundation/Foundation.h>

@interface NSDictionary (XYDictionary)

/** 一般模型属性 */
-(void)wh_createProperty;

/** 网络模型属性 */
-(void)wh_createNetProperty;

/** 合并两个NSDictionary */
+ (NSDictionary *)dictionaryByMerging:(NSDictionary *)dict1 with:(NSDictionary *)dict2;

/** 并入一个NSDictionary */
- (NSDictionary *)dictionaryByMergingWith:(NSDictionary *)dict;

/** 拼接字典 */
- (NSDictionary *)dictionaryByAddingEntriesFromDictionary:(NSDictionary *)dictionary;

/** 删除某些key值 */
- (NSDictionary *)dictionaryByRemovingEntriesWithKeys:(NSSet *)keys;

@end

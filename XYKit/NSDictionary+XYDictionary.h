//
//  NSDictionary+XYDictionary.h
//  XYKit
//  https://github.com/remember17/XYKit
//  Created by 吴浩 on 2017/6/7.


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

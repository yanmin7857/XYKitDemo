//
//  NSArray+XYArray.m
//  XYKit
//  https://github.com/remember17/XYKit
//  Created by 吴浩 on 2017/6/7.
//  Copyright © 2017年 remember17. All rights reserved.
//

#import "NSArray+XYArray.h"

@implementation NSArray (XYArray)

- (NSArray *)wh_reverseArray {
    NSMutableArray *arrayTemp = [NSMutableArray arrayWithCapacity:[self count]];
    NSEnumerator *enumerator = [self reverseObjectEnumerator];
    for (id element in enumerator) {
        [arrayTemp addObject:element];
    }
    return arrayTemp;
}

@end

//
//  NSFileManager+XYFileManager.h
//  XYKit
//  https://github.com/remember17/XYKit
//  Created by 吴浩 on 2017/6/7.


#import <Foundation/Foundation.h>

@interface NSFileManager (XYFileManager)

/** document URL */
+ (NSURL *)documentsURL;

/** document 路径 */
+ (NSString *)documentsPath;

/** library URL */
+ (NSURL *)libraryURL;

/** library 路径 */
+ (NSString *)libraryPath;

/** cache URL */
+ (NSURL *)cachesURL;

/** cache 路径 */
+ (NSString *)cachesPath;

@end

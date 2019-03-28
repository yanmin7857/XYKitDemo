//
//  NSFileManager+XYFileManager.h
//  XYKit
//  https://github.com/yanmin7857/XYKitDemo
//  Created by 小羊 on 2019/3/28.


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

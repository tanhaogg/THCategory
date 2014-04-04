//
//  NSFileManager+THCategory.h
//  THCategory
//
//  Created by tanhao on 14-3-17.
//  Copyright (c) 2014年 http://www.tanhao.me. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (THCategory)

/*
 快速计算文件/目录的size
 返回实际的byte数
 */
- (uint64_t)fileSizeAtPath:(NSString *)filePath;

/*
 快速计算文件/目录的size
 返回占用磁盘空间
 */
- (uint64_t)diskSizeAtPath:(NSString *)filePath;

/*
 返回是否为替身文件
 */
- (BOOL)isAlias:(NSString *)aliasPath;

/*
 返回替身文件的原身
 */
- (NSString *)resolvingAlias:(NSString *)aliasPath;

/*
 创建替身文件
 */
- (BOOL)createAlias:(NSString *)aliasPath fromPath:(NSString *)originalPath;

@end

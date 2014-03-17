//
//  NSString+THCategory.h
//  THCategory
//
//  Created by tanhao on 14-3-17.
//  Copyright (c) 2014年 http://www.tanhao.me. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (THCategory)

#pragma mark 拼音

/*
 返回汉字拼音,无声调
 */
- (NSString *)pinyin;

/*
 返回汉字拼音,包含声调
 */
- (NSString *)pinyinAndTone;

#pragma mark SIZE

/*
 以1024作单位换算,默认至少保留3位有效数字
 */
+ (NSString *)stringFromFileSize:(uint64_t)byteCount;

/*
 以1000作单位换算,默认至少保留3位有效数字
 */
+ (NSString *)stringFromDiskSize:(uint64_t)byteCount;

/*
 byteCount:byte数量
 delimiter:数字与单位之间的间隔
 diskMode:YES时以1000作单位换算，NO时以1024作单位换算
 significant:保留有效长度
 */
+ (NSString *)stringFromSize:(uint64_t)byteCount delimiter:(NSString *)delimiter diskMode:(BOOL)diskMode significant:(uint8_t)length;

@end

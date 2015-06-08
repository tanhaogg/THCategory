//
//  NSData+THCategory.h
//  THCategory
//
//  Created by TanHao on 15-6-8.
//  Copyright (c) 2015年 http://www.tanhao.me. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (THCategory)

/**
 @brief 返回有效的UTF8编码的NSData数据,替换掉无效的编码
 **/
- (NSData *)UTF8Data;

@end

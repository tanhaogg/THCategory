//
//  NSString+THCategory.m
//  THCategory
//
//  Created by tanhao on 14-3-17.
//  Copyright (c) 2014年 http://www.tanhao.me. All rights reserved.
//

#import "NSString+THCategory.h"

@implementation NSString (THCategory)

#pragma mark 拼音

- (NSString *)pinyin
{
    return [self pinyinWithTone:NO];
}

- (NSString *)pinyinAndTone
{
    return [self pinyinWithTone:YES];
}

- (NSString *)pinyinWithTone:(BOOL)tone
{
    NSMutableString *string = [self mutableCopy];
    CFStringTransform((__bridge CFMutableStringRef)string,NULL,kCFStringTransformMandarinLatin,NO);
    if (!tone)
    {
        CFStringTransform((__bridge CFMutableStringRef)string,NULL,kCFStringTransformStripDiacritics,NO);
    }
    return [[NSString alloc] initWithString:string];
}

#pragma mark SIZE

+ (NSString *)stringFromFileSize:(uint64_t)byteCount
{
    return [self stringFromSize:byteCount delimiter:@" " diskMode:NO significant:3];
}

+ (NSString *)stringFromDiskSize:(uint64_t)byteCount
{
    return [self stringFromSize:byteCount delimiter:@" " diskMode:YES significant:3];
}

+ (NSString *)stringFromSize:(uint64_t)byteCount delimiter:(NSString *)delimiter diskMode:(BOOL)diskMode significant:(uint8_t)length
{
    const NSString* sizeUnit[] = {@"B",@"KB",@"MB",@"GB",@"TB",@"PB",@"EB",@"ZB",@"YB"};
    
    NSInteger idx = 0;
    double floatSize = byteCount;
    while (floatSize>1000 && idx < (sizeof(sizeUnit)/sizeof(sizeUnit[0])-1))
    {
        idx++;
        if (diskMode)
            floatSize /= 1000;
        else
            floatSize /= 1024;
    }
    
    if (idx == 0)
    {
        return [NSString stringWithFormat:@"%.0f%@%@",floatSize,delimiter?delimiter:@"",sizeUnit[idx]];
    }else
    {
        NSString *formatString = [NSString stringWithFormat:@"%%.%df%%@%%@",MAX((int)length - ((int)log10(floatSize) + 1), 0)];
        return [NSString stringWithFormat:formatString,floatSize,delimiter?delimiter:@"",sizeUnit[idx]];
    }
}

@end

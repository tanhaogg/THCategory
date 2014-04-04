//
//  main.m
//  THCategory
//
//  Created by tanhao on 14-3-17.
//  Copyright (c) 2014年 http://www.tanhao.me. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "THCategory.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //测试拼音
        NSString *string = @"老谭";
        NSLog(@"%@(%@)",[string pinyin],[string pinyinAndTone]);
        
        //测试Size
        uint64_t byteCount = 1234567890123456;
        NSLog(@"%@",[NSString stringFromFileSize:byteCount]);
        
        //测试计算
        NSString *path = [[NSBundle mainBundle] bundlePath];
        NSLog(@"%llu",[[NSFileManager defaultManager] fileSizeAtPath:path]);
        
        //测试Timer
        [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES handler:^{
            NSLog(@"xxx");
        }];
        
        [[NSApplication sharedApplication] run];
    }
    return 0;
}


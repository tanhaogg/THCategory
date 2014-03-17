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
        
        NSLog(@"%@",[@"茜" pinyinAndTone]);
        
        uint64_t byteCount = 1234567890123456;
        NSLog(@"%@",[NSByteCountFormatter stringFromByteCount:byteCount countStyle:NSByteCountFormatterCountStyleBinary]);
        NSLog(@"%@",[NSString stringFromFileSize:byteCount]);
        
        [NSTimer scheduledTimerWithTimeInterval:1 repeats:NO handler:^{
            NSLog(@"xx");
        }];
    }
    return 0;
}


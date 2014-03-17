//
//  NSTimer+THCategory.m
//  THCategory
//
//  Created by tanhao on 14-3-17.
//  Copyright (c) 2014年 http://www.tanhao.me. All rights reserved.
//

#import "NSTimer+THCategory.h"

@implementation NSTimer (THCategory)

+ (NSTimer *)timerWithTimeInterval:(NSTimeInterval)ti repeats:(BOOL)yesOrNo handler:(void(^)(void))handler
{
    return [self timerWithTimeInterval:ti target:self selector:@selector(_timerHandler:) userInfo:[handler copy] repeats:yesOrNo];
}

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti repeats:(BOOL)yesOrNo handler:(void(^)(void))handler
{
    return [self scheduledTimerWithTimeInterval:ti target:self selector:@selector(_timerHandler:) userInfo:[handler copy] repeats:yesOrNo];
}

+ (void)_timerHandler:(NSTimer *)inTimer;
{
    if (inTimer.userInfo)
    {
        void(^handler)(void) = [inTimer userInfo];
        handler();
    }
}

@end

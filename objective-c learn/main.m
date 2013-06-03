//
//  main.m
//  objective-c learn
//
//  Created by nero on 13-6-3.
//  Copyright (c) 2013年 nero. All rights reserved.
//
#include <wchar.h>
#include <limits.h>
#import <Foundation/Foundation.h>
#import "Calculation.h"

//清理输入流
void clearStream();

//进行输入与计算
void calculating(){
    wchar_t sgin = L' ';
    long frist = 0, second = 0;
    NSLog(@">输入表达式:");
    wscanf(L"%ld%1c%ld",&frist,&sgin,&second);
    @try {
        NSLog(@"\nresult = %ld\n",[Calculation calculting:frist With:second At:sgin]);
    }@catch (NSException *exception){
        NSLog(@"\n>error type :%@ error reason : %@\n",[exception name],[exception reason]);
    }@finally {
        clearStream();
    }
}

//清理输入流实现
void clearStream(){
    wchar_t e = L' ';
    while ((e = getwchar()) != L'\n' &&
           e != EOF) {
    }
}

//主处理循环
int main(int argc, const char * argv[])
{
    @autoreleasepool {
        while (YES) {
            calculating();
        }
    }
    return 0;
}


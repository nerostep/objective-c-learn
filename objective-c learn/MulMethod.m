//
//  MulMethod.m
//  objective-c learn
//
//  Created by nero on 13-6-3.
//  Copyright (c) 2013年 nero. All rights reserved.
//

#include <limits.h>
#import "MulMethod.h"

@implementation MulMethod
- (long) execution : (const long) numberOne With : (const long) numberTwo{
    double result = numberOne * numberTwo;
    if(result > LONG_MAX){
        @throw [[NSException alloc] initWithName:@"overflow" reason:@"param is too big!" userInfo: nil];
    }
    return (long)result;
}
@end

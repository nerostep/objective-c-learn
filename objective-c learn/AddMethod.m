//
//  AddMethod.m
//  objective-c learn
//
//  Created by nero on 13-6-3.
//  Copyright (c) 2013年 nero. All rights reserved.
//

#include <limits.h>
#import "AddMethod.h"

@implementation AddMethod
- (long) execution : (const long) numberOne With : (const long) numberTwo{
    long result = 0;
    if(numberOne > LONG_MAX / 2 ||
       numberTwo > LONG_MAX / 2){
        @throw [[NSException alloc] initWithName:@"overflow" reason:@"param is too big!" userInfo: nil];
    }else{
        result = numberOne + numberTwo;
    }
    return result;
}
@end

//
//  Calculation.m
//  objective-c learn
//
//  Created by nero on 13-6-3.
//  Copyright (c) 2013年 nero. All rights reserved.
//

#import "Calculation.h"
#import "AddMethod.h"
#import "SubMethod.h"
#import "MulMethod.h"
#import "DivMethod.h"

@implementation Calculation
+ (long) calculting : (const long) one With : (const long) two At : (const wchar_t) sgin{
    long result = 0;
    id calculate = nil;
    switch (sgin) {
        case L'+':
            calculate = [AddMethod new];
            break;
        case L'-':
            calculate = [SubMethod new];
            break;
        case L'*':
            calculate = [MulMethod new];
            break;
        case L'/':
            calculate = [DivMethod new];
            break;
        default:
             @throw [[NSException alloc] initWithName:@"sgin" reason:@"error calculate sgin!" userInfo: nil];
    }
    if(calculate != nil &&
       [calculate respondsToSelector:@selector(execution:With:)]){
        result = [calculate execution:one With:two];
    }
    return result;
}
@end

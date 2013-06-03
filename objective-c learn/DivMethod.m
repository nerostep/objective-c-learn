//
//  DivMethod.m
//  objective-c learn
//
//  Created by nero on 13-6-3.
//  Copyright (c) 2013年 nero. All rights reserved.
//

#import "DivMethod.h"

@implementation DivMethod
- (long) execution : (const long) numberOne With : (const long) numberTwo{
    long result = 0;
    if(0 == numberTwo){
        @throw [[NSException alloc] initWithName:@"param" reason:@"param two not be 0!" userInfo: nil];
    }else{
        result = numberOne / numberTwo;
    }
    return result;
}
@end

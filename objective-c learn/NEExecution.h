//
//  NEExecution.h
//  objective-c learn
//
//  Created by nero on 13-6-3.
//  Copyright (c) 2013年 nero. All rights reserved.
//

#import <Foundation/Foundation.h>


/*
 *  计算处理协议
 */
@protocol NEExecution <NSObject>
- (long) execution : (const long) numberOne With : (const long) numberTwo;
@optional
- (long) execution : (long) onlyThis;
@end

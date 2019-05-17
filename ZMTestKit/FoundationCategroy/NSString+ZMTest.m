//
//  NSString+ZMTest.m
//  ZMTestKit
//
//  Created by ZM on 2019/5/17.
//  Copyright © 2019 ZM. All rights reserved.
//

#import "NSString+ZMTest.h"

@implementation NSString (ZMTest)

/** 分割字符 组成数组 */
- (NSArray *)separatedOriginString:(NSString *)str separatedString:(NSString *)separatedString {
    return [str componentsSeparatedByString:separatedString];
}

@end

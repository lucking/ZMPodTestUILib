//
//  NSString+ZMAdd.m
//  ZMStaticLib2
//
//  Created by ZM on 2019/4/12.
//  Copyright © 2019 ZM. All rights reserved.
//

#import "NSString+ZMAdd.h"

@implementation NSString (ZMAdd)

/** 分割字符 组成数组 */
- (NSArray *)separatedOriginString:(NSString *)str separatedString:(NSString *)separatedString {
    return [str componentsSeparatedByString:separatedString];
}

@end

//
//  NSString+ZMAdd.h
//  ZMStaticLib2
//
//  Created by ZM on 2019/4/12.
//  Copyright © 2019 ZM. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (ZMAdd)

/** 分割字符 组成数组 */
- (NSArray *)separatedOriginString:(NSString *)str separatedString:(NSString *)separatedString;

@end

NS_ASSUME_NONNULL_END

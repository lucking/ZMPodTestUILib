//
//  NSString+ZMTest.h
//  ZMTestKit
//
//  Created by ZM on 2019/5/17.
//  Copyright © 2019 ZM. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (ZMTest)

/** 分割字符 组成数组 */
- (NSArray *)separatedOriginString:(NSString *)str separatedString:(NSString *)separatedString;

@end

NS_ASSUME_NONNULL_END

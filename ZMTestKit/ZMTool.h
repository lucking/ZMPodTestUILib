//
//  ZMTool.h
//  ZM_Bugly
//
//  Created by ZM on 2019/5/15.
//  Copyright © 2019 ZM. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZMTool : NSObject

//获取当前时间戳：(以秒为单位)
+ (NSString *)getNowTimestampOfSecond;

//==============="  保存信息到本地：NSUserDefaults  "========================
// 存入本地信息: Object
// 读取一个本地信息: Object
// 1.存入、读取: NSString
// 2.存入、读取: NSInteger
// 3.存入、读取: Float
// 4.存入、读取: BOOL

// 存入本地信息: Object
+ (void)setObject:(id)object forKey:(NSString*)mykey;
+ (void)setNSString:(NSString *)myMessage forKey:(NSString*)mykey;
// 读取一个本地信息: Object
+ (id)getObjectForKey:(NSString *)mykey;
+ (NSString *)getNSStringForKey:(NSString *)mykey;

@end

NS_ASSUME_NONNULL_END

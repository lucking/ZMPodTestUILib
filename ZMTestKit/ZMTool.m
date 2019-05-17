//
//  ZMTool.m
//  ZM_Bugly
//
//  Created by ZM on 2019/5/15.
//  Copyright © 2019 ZM. All rights reserved.
//

#import "ZMTool.h"

@implementation ZMTool

//获取当前时间戳：(以秒为单位)
+ (NSString *)getNowTimestampOfSecond {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    //设置时区,这个对于时间的处理有时很重要
    NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/Shanghai"];
    [formatter setTimeZone:timeZone];
    NSDate *dateNow = [NSDate date];//现在时间,你可以输出来看下是什么格式
    NSString *timeSP = [NSString stringWithFormat:@"%ld", (long)[dateNow timeIntervalSince1970]];
    
    return timeSP;
}


/**
 *  NNSUserDefaults
 */
#define  NNSUserDefaults    [NSUserDefaults standardUserDefaults]

#pragma mark 存入本地信息: Object
+ (void)setObject:(id)object forKey:(NSString*)mykey
{
    [[NSUserDefaults standardUserDefaults] setObject:object forKey:mykey];
    [[NSUserDefaults standardUserDefaults] synchronize]; //同步保存数据
}
#pragma mark 读取一个本地信息: Object
+ (id)getObjectForKey:(NSString *)mykey
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:mykey];
}

// 1.存入、读取: NSString
+ (void)setNSString:(NSString *)myMessage forKey:(NSString*)mykey
{
    [NNSUserDefaults setObject:myMessage forKey:mykey];
    [NNSUserDefaults synchronize];
}
+ (NSString *)getNSStringForKey:(NSString *)mykey{
    return [NNSUserDefaults objectForKey:mykey];
}



@end

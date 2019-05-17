//
//  UIColor+ZMTest.h
//  ZMTestKit
//
//  Created by ZM on 2019/5/17.
//  Copyright © 2019 ZM. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// 十六进制颜色
#define ZMColorHex(hexValue) [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16)) / 255.0 green:((float)((hexValue & 0xFF00) >> 8)) / 255.0 blue:((float)(hexValue & 0xFF)) / 255.0 alpha:1.0f]


@interface UIColor (ZMAdd)

// 计算色值
// 16进制色值转化为RGB返回UIColor类型对象
+ (UIColor *)zm_colorHexString:(NSString *)hexValue;

// 将图像转化为颜色对象
+ (UIColor*)zm_colorWithImage:(UIImage*)image;
+ (void)zm_colorWithView:(UIView *)view imageNamed:(NSString *)name;

// 设置随机颜色
+ (UIColor *)zm_getRandomColor;


/* 颜色比较
 * return YES 颜色相同
 * return NO  颜色不同
 */
+ (BOOL)zm_firstColor:(UIColor*)firstColor secondColor:(UIColor*)secondColor;
/**
 颜色比较
 @param secondColor 另一种颜色
 @return 颜色相同返回YES，不相同返回NO
 */
- (BOOL)zm_isEqualToColor:(UIColor*)secondColor;

@end


NS_ASSUME_NONNULL_END

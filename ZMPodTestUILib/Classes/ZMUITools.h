//
//  ZMUITools.h
//  ProjectArchitecture
//
//  Created by ZM on 2018/5/30.
//  Copyright © 2018年 ZM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


/**
 *  ZMTableViewCellSeparatorStyle
 */
typedef NS_ENUM(NSInteger, ZMCellSeparatorStyle) {
    ZMCellSeparatorNormal,
    ZMCellSeparatorNone,
    ZMCellSeparatorSingleLine,
    ZMCellSeparatorSingleLineEtched NS_ENUM_DEPRECATED_IOS(2_0, 11_0, "Use ZMCellSeparatorSingleLine for a single line separator."),
    ZMCellSeparatorAll,
    
} __TVOS_PROHIBITED;



@interface ZMUITools : NSObject
// 添加线
+ (UIView *_Nonnull)zm_lineViewFrame:(CGRect)frame;

// 添加：UILabel
+ (UILabel *_Nonnull)zm_createLabText:(NSString * _Nullable)text 
                    textColor:(UIColor * _Nullable)textColor
                         font:(UIFont * _Nonnull)font  
                      bgColor:(UIColor *_Nullable)bgColor frame:(CGRect)frame;

// 添加按钮：UIButton
+ (UIButton *_Nullable)zm_createBtnTitle:(nullable NSString *)title 
                     titleColor:(UIColor *_Nullable)titleColor
                           font:(UIFont * _Nullable)font  
                        bgColor:(UIColor *_Nullable)bgColor frame:(CGRect)frame;

+ (UIButton *_Nullable)zm_createBtnTitle:(nullable NSString *)title 
                     titleColor:(UIColor *_Nullable)titleColor
                           font:(UIFont * _Nullable)font  
                          image:(UIImage * _Nullable)image 
                        bgImage:(UIImage * _Nullable)bgImage 
                        bgColor:(UIColor *_Nullable)bgColor frame:(CGRect)frame 
                               addTarget:(nullable id)target action:(SEL _Nullable )action;

/** 表的配置 UITableView
 @param tableView 表
 @param separatorColor 分割线颜色
 @param separatorStyle 分割线类型
 @param headerViewHide 头部多余的分割线
 @param footerViewHide 底部多余的分割线
 @param estimated 是否预估高度
 */
+ (void)setTableView:(UITableView *_Nullable)tableView bgColor:(UIColor *_Nullable)bgColor 
      separatorStyle:(ZMCellSeparatorStyle)separatorStyle 
      separatorColor:(UIColor *_Nonnull)separatorColor
     headerViewHide:(BOOL)headerViewHide 
      footerViewHide:(BOOL)footerViewHide 
           estimated:(BOOL)estimated;

@end

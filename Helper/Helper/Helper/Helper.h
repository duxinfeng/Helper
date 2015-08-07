//
//  Helper.h
//  Helper
//
//  Created by duxinfeng on 15/8/7.
//  Copyright (c) 2015年 niux Tech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Helper : NSObject

/**
 *  app 当前版本
 *
 *  @return app 当前版本
 */
+ (NSString *)appCurrentVersion;

/**
 *  跳转到app的评论页
 */
+ (void)gotoAppStoreComment;

/**
 *  返回转换后的时间
 *
 *  @param datestring 服务器端的时间字符串
 *
 *  @return 返回转后的时间
 */
+ (NSString *)dateStringToTextString:(NSString *)datestring;

/**
 *  获取text的宽度
 *
 *  @param text text文本内容
 *  @param font 字体大小和类型
 *
 *  @return 返回text的宽度
 */
+ (CGFloat)getTextWidthWithText:(NSString *)text font:(UIFont *)font;

/**
 *  获取text的高度
 *
 *  @param text  text文本内容
 *  @param font  字体大小和类型
 *  @param width text的最大宽度
 *
 *  @return 返回text的实际高度
 */
+ (CGFloat)getTextHeightWithText:(NSString *)text font:(UIFont *)font width:(CGFloat)width;

@end

//
//  Helper.m
//  Helper
//
//  Created by duxinfeng on 15/8/7.
//  Copyright (c) 2015年 niux Tech. All rights reserved.
//

#import "Helper.h"
#define kAPPID @"xxxxxx"

@implementation Helper

#pragma - app 相关信息


+ (NSString *)appCurrentVersion
{
    return  [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

+ (void)gotoAppStoreComment
{
    NSString *url = [NSString stringWithFormat:@"http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?id=%@&pageNumber=0&sortOrdering=2&type=Purple+Software&mt=8",kAPPID];
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:url]];
}

#pragma - 时间转换
+ (NSDateFormatter *)sharedDateFormatter {
    
    static NSDateFormatter * sharedDateFormatterInstance = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        sharedDateFormatterInstance = [[NSDateFormatter alloc] init];
        
    });
    
    return sharedDateFormatterInstance;
}

// yyyy-MM-dd 转 MM月dd日
+ (NSString *)dateStringToTextString:(NSString *)datestring
{
    NSDateFormatter *dateFormatter = [Helper sharedDateFormatter];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSDate *date = [dateFormatter dateFromString:datestring];
    [dateFormatter setDateFormat:@"MM月dd日"];
    
    return  [dateFormatter stringFromDate:date];
}


#pragma - 计算text的宽和高

+ (CGFloat)getTextWidthWithText:(NSString *)text font:(UIFont *)font
{
    
    NSDictionary *attributes = @{
                                 NSFontAttributeName: font,
                                 };
    CGRect expectedLabelRect = [text boundingRectWithSize:(CGSize){CGFLOAT_MAX, CGFLOAT_MAX}
                                                  options:NSStringDrawingUsesLineFragmentOrigin
                                               attributes:attributes
                                                  context:nil];
    return CGRectGetWidth(expectedLabelRect);
    
}

+ (CGFloat)getTextHeightWithText:(NSString *)text font:(UIFont *)font width:(CGFloat)width
{
    
    NSDictionary *attributes = @{
                                 NSFontAttributeName: font,
                                 };
    CGRect expectedLabelRect = [text boundingRectWithSize:(CGSize){width, CGFLOAT_MAX}
                                                  options:NSStringDrawingUsesLineFragmentOrigin
                                               attributes:attributes
                                                  context:nil];
    return CGRectGetHeight(expectedLabelRect);
    
}


@end

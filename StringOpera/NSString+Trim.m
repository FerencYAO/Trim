//
//  NSString+Trim.m
//  StringOpera
//
//  Created by yao on 13-8-24.
//  Copyright (c) 2013年 yao. All rights reserved.
//

#import "NSString+Trim.h"

@implementation NSString (Trim)

- (NSString *)trimFontAndEndSpace
{
    NSString *trimFontStr = [self trimFontSpace];
    NSString *trimEndStr = [trimFontStr trimEndSpace];
    return trimEndStr;
}

- (NSString *)trimFontSpace
{
    int i = 0;
    for (; i < self.length && [self characterAtIndex:i] == ' '; i++);
    return [self substringFromIndex:i];
}

- (NSString *)trimEndSpace
{
    int i = self.length - 1;
    for (; i >= 0 && [self characterAtIndex:i] == ' '; i--);
    return [self substringToIndex:i + 1];
}

- (NSString *)trimAllSpace
{
    return [self stringByReplacingOccurrencesOfString:@" " withString:@""];
}

@end

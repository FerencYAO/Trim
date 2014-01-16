//
//  NSString+FontName.m
//  StringOpera
//
//  Created by yao on 14-1-16.
//  Copyright (c) 2014年 yao. All rights reserved.
//

#import "NSString+FontName.h"

@implementation NSString (FontName)

+ (NSArray *)allFontFamilies
{
    return [UIFont familyNames];
}

+ (NSString *)postscriptNameFromFullName:(NSString *)fullName
{
    UIFont *font = [UIFont fontWithName:fullName size:1];
    return (__bridge NSString *)(CTFontCopyPostScriptName((__bridge CTFontRef)(font)));
}

@end

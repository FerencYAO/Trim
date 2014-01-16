//
//  NSString+FontName.h
//  StringOpera
//
//  Created by yao on 14-1-16.
//  Copyright (c) 2014年 yao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (FontName)

+ (NSArray *)allFontFamilies;

+ (NSString *)postscriptNameFromFullName:(NSString *)fullName;

@end

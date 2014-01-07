//
//  NSString+Trim.h
//  StringOpera
//
//  Created by yao on 13-8-24.
//  Copyright (c) 2013年 yao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Trim)

- (NSString *)trimFontAndEndSpace;

- (NSString *)trimFontSpace;

- (NSString *)trimEndSpace;

- (NSString *)trimAllSpace;

@end

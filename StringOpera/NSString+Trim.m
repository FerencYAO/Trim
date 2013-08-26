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
  NSString *leadingTrailingWhiteSpacesPattern = @"(?:^\\s+)|(?:\\s+$)";
  NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:leadingTrailingWhiteSpacesPattern options:NSRegularExpressionCaseInsensitive error:NULL];
  NSRange stringRange = NSMakeRange(0, self.length);
  NSString *trimmedString = [regex stringByReplacingMatchesInString:self options:NSMatchingReportProgress range:stringRange withTemplate:@"$1"];
  return trimmedString;
}

- (NSString *)trimFontSpace
{
  NSString *leadingWhiteSpacesPattern = @"(?:^\\s+)";
  NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:leadingWhiteSpacesPattern options:NSRegularExpressionCaseInsensitive error:NULL];
  NSRange stringRange = NSMakeRange(0, self.length);
  NSString *trimmedString = [regex stringByReplacingMatchesInString:self options:NSMatchingReportProgress range:stringRange withTemplate:@"$1"];
  return trimmedString;
}

- (NSString *)trimEndSpace
{
  NSString *tailWhiteSpacesPattern =@"(?:\\s+$)";
  NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:tailWhiteSpacesPattern options:NSRegularExpressionCaseInsensitive error:NULL];
  NSRange stringRange =NSMakeRange(0, self.length);
  NSString *trimmedString = [regex stringByReplacingMatchesInString:self options:NSMatchingReportProgress range:stringRange withTemplate:@"$1"];
  return trimmedString;
}

- (NSString *)trimAllSpace
{
  return [self stringByReplacingOccurrencesOfString:@" " withString:@""];
}

@end

//
//  Test.m
//  Test
//
//  Created by yao on 13-8-24.
//  Copyright (c) 2013年 yao. All rights reserved.
//

#import "Test.h"
#import "NSString+Trim.h"

@implementation Test

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    NSArray *ary = @[@" onlyfrontspace",
                     @"onlyendspace ",
                     @" onlyfrontandendspace ",
                     @" all space",
                     @"     onlyfrontspace",
                     @"onlyendspace     ",
                     @"     onlyfrontandendspace    ",
                     @"     all     space",
                     @""];
    for (NSString *str in ary) {
        NSString *trimAllSpaceStr = [str trimAllSpace];
        NSString *description = [NSString stringWithFormat:@"-----before---str---%@---trimAllSpaceStr----str-----%@----",str,trimAllSpaceStr];
        STAssertTrue(NSEqualRanges([trimAllSpaceStr rangeOfString:@""],NSMakeRange(NSNotFound, 0)), description);
        NSString *trimFontSpace = [str trimFontSpace];
        description = [NSString stringWithFormat:@"-----before---str---%@---trimFontSpace----str-----%@----",str,trimFontSpace];
        STAssertTrue(![trimFontSpace hasPrefix:@" "], description);
        NSString *trimEndSpace = [str trimEndSpace];
        description = [NSString stringWithFormat:@"-----before---str---%@---trimEndSpace----str-----%@----",str,trimEndSpace];
        STAssertTrue(![trimEndSpace hasSuffix:@" "], description);
        NSString *trimFontAndEndSpace = [str trimFontAndEndSpace];
        description = [NSString stringWithFormat:@"-----before---str---%@---trimFontAndEndSpace----str-----%@----",str,trimFontAndEndSpace];
        STAssertTrue(![trimFontAndEndSpace hasPrefix:@" "]&&![trimFontAndEndSpace hasSuffix:@" "], description);
    }
}

@end

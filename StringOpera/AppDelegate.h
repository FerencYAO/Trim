//
//  AppDelegate.h
//  StringOpera
//
//  Created by yao on 13-8-24.
//  Copyright (c) 2013年 yao. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AppDelegate : UIResponder <UIApplicationDelegate> {
  @private
  NSMutableString *_test;
}

@property (copy, nonatomic) NSString *test;
@property (strong, nonatomic) UIWindow *window;

@end

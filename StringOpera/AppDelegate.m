//
//  AppDelegate.m
//  StringOpera
//
//  Created by yao on 13-8-24.
//  Copyright (c) 2013年 yao. All rights reserved.
//

#import "AppDelegate.h"
#import "YLPerformLater.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
  
  
  self.test =  [[NSMutableString alloc] init];
  [_test appendString:[[NSMutableString alloc] initWithString:@"ddd"]];
  [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(logTest:) userInfo:nil repeats:YES];
  [[self.test performAfterDelay:5] appendString:@"ttttsdsdsfsd"];
  
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)logTest:(id)userInfo
{
  NSLog(@"-------%@----",self.test);
}


- (void)setTest:(NSString *)aTest
{
  NSMutableString *copy = [aTest mutableCopy];
  _test = copy;
}

- (NSString *)aTest
{
  return [_test copy];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

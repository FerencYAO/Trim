//
//  YLPerformLater.h
//  StringOpera
//
//  Created by yao on 13-9-13.
//  Copyright (c) 2013年 yao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YLPerformLater : NSObject {
  NSInvocation *myInvocation;
  id target;
}

-(id)initWithTarget:(id)theTarget;
-(void)performLate;

@end


@interface NSObject (PerformLater)

-(id)performAfterDelay:(NSTimeInterval)delay;

@end

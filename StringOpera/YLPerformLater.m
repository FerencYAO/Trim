//
//  YLLaberPerform.m
//  StringOpera
//
//  Created by yao on 13-9-13.
//  Copyright (c) 2013年 yao. All rights reserved.
//

#import "YLPerformLater.h"

@implementation YLPerformLater

- (id)initWithTarget:(id)theTarget
{
  self = [super init];
  if (self) {
    target = theTarget;
  }
  return self;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
  myInvocation = anInvocation;
  [myInvocation retainArguments];
}

-(BOOL)respondsToSelector:(SEL)aSelector
{
  BOOL result = [super respondsToSelector:aSelector];
  if (result == NO) {
    result = [target respondsToSelector:aSelector];
  }
  return result;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
{
  NSMethodSignature *methodSignature = [super methodSignatureForSelector:aSelector];
  if (!methodSignature) {
    methodSignature = [target methodSignatureForSelector:aSelector];
  }
  return methodSignature;
}

-(void)performLate
{
  [myInvocation invokeWithTarget:target];
}

@end

@implementation NSObject (PerformLater)

-(id)performAfterDelay:(NSTimeInterval)delay
{
  YLPerformLater *laterPerformer = [[YLPerformLater alloc] initWithTarget:self];
  [laterPerformer performSelector:@selector(performLate) withObject:nil afterDelay:delay];
  return laterPerformer;
}

@end

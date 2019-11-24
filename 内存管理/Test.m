//
//  Test.m
//  内存管理
//
//  Created by didi on 2019/11/21.
//  Copyright © 2019 didi. All rights reserved.
//

#import "Test.h"
#import <objc/message.h>
@implementation Test
+(void)sameNameMuthod
{
    NSLog(@"调用者: %@",self);
}
-(void)sameNameMuthod
{
    NSLog(@"调用者: %@",self);
}
+(void)classMuthod
{
    /*选择器的使用*/
    SEL func = @selector(sameNameMuthod);
    [self performSelector:func];
}
-(void)instanceMuthod
{
    SEL func = @selector(sameNameMuthod);
    [self performSelector:func];
}

-(id)init
{
   
    
    name_ = @"父类";
    return self;
}
-(void)print
{
    NSLog(@"我是父类的");
}


@end

@implementation Student
-(id)init
{
    if(self = [super init])
    {
        /*测试消息传递机制*/
        [self print];
        name_ = @"子类";
        age_ = 0;
    }
    
    return self;
}



/*动态添加方法*/
//void replaceFunc(id self, SEL _cmd)
//{
//    NSLog(@"消息转发到此");
//}
//+(BOOL)resolveInstanceMethod:(SEL)sel
//{
//    //if(sel == NSSelectorFromString(@"noImplementationMethod"))
//    if([NSStringFromSelector(sel) isEqualToString:@"noImplementationMethod"])
//    {
//        class_addMethod([self class], sel,(IMP)replaceFunc,"v@:");
//        return YES;
//    }
//    return [super resolveInstanceMethod:sel];
//}
////-(void)print
//{
//    NSLog(@"我是子类的");
//}
/*消息转发*/
//-(id)forwardingTargetForSelector:(SEL)aSelector
//{
//    if([NSStringFromSelector(aSelector) isEqualToString:@"noImplementationMethod"])
//    {
//        return [MyClass new];
//    }
//    return [super forwardingTargetForSelector:aSelector];
//}



-(NSMethodSignature*)methodSignatureForSelector:(SEL)aSelector
{
    //返回签名信息
    if([NSStringFromSelector(aSelector) isEqualToString:@"noImplementationMethod"])
    {
        //如果知道方法签名，可以直接放回
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
        /*
         或者还可以这样
         return [self methodSignatureForSelector:aSelector];
         return  [NSObject methodSignatureForSelector:aSelector];
          */
    }
    return [super methodSignatureForSelector:aSelector];
}
-(void)forwardInvocation:(NSInvocation *)anInvocation
{
    SEL sel = anInvocation.selector;
    MyClass* myclass = [MyClass new];
    if([myclass respondsToSelector:sel])
    {
        [anInvocation invokeWithTarget:myclass];
    }
    else
    {
        [super forwardInvocation:anInvocation];
    }
}
@end

@implementation MyClass

-(void)implemationMethod
{
    NSLog(@"动态添加方法");
}

-(void)noImplementationMethod
{
    NSLog(@"备用接收者");
}
@end

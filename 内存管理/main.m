//
//  main.m
//  内存管理
//
//  Created by didi on 2019/11/21.
//  Copyright © 2019 didi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Test.h"
#import <objc/message.h>

void leftPrint()
{
    NSLog(@"我是第一个函数");
}

void rightPrint()
{
    NSLog(@"我是第二个函数");
}
int main(int argc, const char * argv[]) {
    
//    void (*funcptr)();
//
//    int choice = 0;
//    while(!choice)
//    {
//        NSLog(@"输入1或2选择执行的函数：");
//        scanf("%d",&choice);
//        if(choice == 1)
//        {
//            funcptr = leftPrint;
//        }
//        else if(choice == 2)
//        {
//            funcptr = rightPrint;
//        }
//        else
//        {
//            choice = 0;
//            NSLog(@"输入非法");
//        }
//    }
//    funcptr();
    
   // Test* test = [Test new];
    //Test* test = [Test new];
    //[test instanceMuthod];
   // [Test classMuthod];
    Student* stu = [Student new];
//    class_addMethod([Student class], @selector(otherMethod), class_getMethodImplementation([MyClass class], @selector(implemationMethod)), "v@:");
//    [stu performSelector:@selector(otherMethod)];
    [stu noImplementationMethod];
    //[stu performSelector:@selector(noImplementationMethod)];
    
//    NSString* str1 = @"123";
//    NSString* str = [NSString stringWithFormat:@"123"];
//    if(str == str1)
//    {
//        NSLog(@"YES");
//    }
//    else
//    {
//        NSLog(@"NO");
//    }
    
//    if([str isEqualToString:str1])
//        NSLog(@"YES");
//    else
//        NSLog(@"NO");
    return 0;
}

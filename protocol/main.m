//
//  main.m
//  protocol
//
//  Created by didi on 2019/11/15.
//  Copyright © 2019 didi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Protocol.h"
#import "Classification.h"
int main(int argc, const char * argv[]) {
    
//
//    People* person = [[People alloc]initWithName:@"小明" withAge:10];
//    [person showIAmStudent];
//    person.stunumber = 1024;
//    [person Print];
//    NSString* str1 = @"i am string";
//    NSString* str2 = @"i am string";
    
   
//    Student* stu1 = [[Student alloc] initWithName:@"张三" WithSchool:@"清华大学"];
//    Student* stu2 = [[Student alloc] initWithName:@"李四" WithSchool:@"清华大学"];
//    Student* stu3 = [[Student alloc] initWithName:@"王五" WithSchool:@"北京大学"];
//    [stu1 printName];
//    [stu2 printName];
//    [stu3 printName];
    

//    [stu1 isAlumnus:stu2];
//    [stu2 isAlumnus:stu3];
    
    
//    Demo* d = [Demo new];
//    d.brand_ = @"宝马";
//    d.name_ = @"绝影";
//
//    [d selfIntroduction];
    
    
    Roommate* r = [[Roommate alloc] initWithName:@"大锤"];
    I* me = [[I alloc] init];
    [r setSomebd_:me];
    [r eatFood:@"龙须凤尾"];
    
    
//    __block int a = 10;
//    void (^printBlock)() = ^(){
//        /*不可以对外面的变量进行更改*/
//        ++a;
//        NSLog(@"no number");
//    };
//    printBlock();
//    NSLog(@"%d",a);
    
    
    
    
    
    
//    I* me = [I new];
//    [me introduceSelf];
//    [me eatSomething:@"龙须凤尾"];
    return 0;
}

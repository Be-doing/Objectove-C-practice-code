//
//  Protocol.m
//  protocol
//
//  Created by didi on 2019/11/15.
//  Copyright © 2019 didi. All rights reserved.
//

#import "Protocol.h"
@interface People()

@property(copy, nonatomic)NSString* string;
-(void)haha;
@end

@implementation People

-(id)initWithName:(NSString *)name withAge:(NSInteger)age
{
    _name_ = name;
    _age_ = age;
    return self;
}

-(void)Print
{
    NSLog(@"人类");
}
@end

@implementation Demo
-(void)selfIntroduction
{
    NSLog(@"我的名字是%@，我的品牌是%@",_name_, _brand_);
}
-(void)myFunc
{
    NSLog(@"我的功能是奔跑");
}
@end



@implementation Roommate
-(id)initWithName:(NSString*)name
{
    
    if(self = [super init])
    {
        _name_ = name;
    }
    return self;
}

-(void)eatFood:(NSString *)foodname
{
    NSLog(@"%@想吃%@",_name_, foodname);
    [_somebd_ eatSomething:foodname];
}

@end

@implementation I
-(void)introduceSelf
{
    NSLog(@"我是自己声明的方法");
}
-(void)eatSomething:(NSString*)foodname
{
    NSLog(@"我去买%@", foodname);
}

@end



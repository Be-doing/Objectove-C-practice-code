//
//  Shape.m
//  firstpro
//
//  Created by didi on 2019/11/13.
//  Copyright © 2019 didi. All rights reserved.
//

#import "Shape.h"

@implementation Shape
-(NSString *) judgeColor:(ShapeColor) c
{
    if(c == Red) return (@"红色");
    else if(c == Green) return (@"绿色");
    else return (@"蓝色");
}
-(void) setColor:(ShapeColor) c
{
    color_ = c;
}
-(void) setPos:(ShapeRec) r
{
    pos_ = r;
}
//练习函数的嵌套以及函数的使用
-(void) printMessage
{
    NSLog(@"我的颜色是：%@，打印位置为：%d, %d, %d, %d",
          [self judgeColor:color_],pos_.x_,pos_.y_, pos_.width_,pos_.height_ );
}
@end

@implementation Circle

-(void) printMessage
{
    NSLog(@"我的名字是三角形");
    [super printMessage];
}
@end

@implementation Car

-(NSString*) name_
{
    return (name_);
}
-(NSString*) brand_
{
    return (brand_);
}
-(size_t*) price_
{
    return (&price_);
}

-(void) setName:(NSString*) name
{
    name_ = name;
}
-(void) setBrand:(NSString*) brand
{
    brand_ = brand;
}
-(void) setPrice:(size_t*) price
{
    price_ = *price;
}
@end


@implementation Descri
-(NSString*)description
{
    return (@"NSLog发送的消息");
}

@end

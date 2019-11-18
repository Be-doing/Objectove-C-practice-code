//
//  Shape.h
//  firstpro
//
//  Created by didi on 2019/11/13.
//  Copyright © 2019 didi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef enum
{
    Red,
    Green,
    Blue
}ShapeColor;
typedef struct
{
    int x_,y_,width_,height_;
}ShapeRec;

@interface Shape : NSObject
{
    ShapeColor color_;
    ShapeRec pos_;
}
-(void) setColor:(ShapeColor) c;
-(void) setPos:(ShapeRec) r;
-(void) printMessage;
@end

//实验一个.h文件是否可以有多个类
@interface Circle : Shape

@end

@interface Car : NSObject
{
    NSString* name_;
    NSString* brand_;
    size_t price_;
}
-(NSString*) name_;
-(NSString*) brand_;
-(size_t*) price_;

-(void) setName:(NSString*) name;
-(void) setBrand:(NSString*) brand;
-(void) setPrice:(size_t*) price;
@end


@interface Descri : NSObject
-(NSString*)description;
@end
NS_ASSUME_NONNULL_END

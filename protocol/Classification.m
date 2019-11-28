//
//  Classification.m
//  protocol
//
//  Created by didi on 2019/11/28.
//  Copyright © 2019 didi. All rights reserved.
//

#import "Classification.h"

@implementation People(Student)
-(void)showIAmStudent
{
    NSLog(@"我是一名%zd岁的学生，%@",self.age_, self.name_);
}
-(void)setStunumber:(int) num
{
    
}

@end


@implementation NSString(ErrorDemo)
- (BOOL)isEqualToString:(NSString *)aString
{
    NSLog(@"本是同根生，相煎何太急");
    return NO;
}
@end

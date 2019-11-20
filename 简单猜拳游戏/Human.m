//
//  Human.m
//  简单猜拳游戏
//
//  Created by didi on 2019/11/20.
//  Copyright © 2019 didi. All rights reserved.
//

#import "Human.h"




@implementation Human

-(id)init
{
    _point_ = 0;
    _name_ = @"默认";
    _res = [NSDictionary dictionaryWithObjectsAndKeys:@"剪刀",@(1),@"石头",@(2),@"布",@(3), nil];
    return self;
}

-(BOOL)punches
{
    
    if([_name_ isEqualToString:@"默认"])
    {
        NSLog(@"请输入您的ID");
        char buff[100];
        if(scanf("%s",buff))
        {
            _name_ = [NSString stringWithUTF8String:buff];
        }
        else
        {
            NSLog(@"输入非法！");
            return NO;
        }
        
    }
    int choice = 0;
    NSLog(@"1、剪刀    2、石头    3、布");
    NSLog(@"请出拳：");
    while(1)
    {
        scanf("%d",&choice);
        if(choice < 1 || choice > 3)
        {
            NSLog(@"输入非法！,请重新输入");
        }
        else
        {
            break;
        }
    }
    NSNumber* tmp = [NSNumber numberWithInt:choice];
    _cli_ = _res[tmp];
    NSLog(@"我出%@",_cli_);
    return YES;
}
@end

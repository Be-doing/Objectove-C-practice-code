//
//  Computer.m
//  简单猜拳游戏
//
//  Created by didi on 2019/11/20.
//  Copyright © 2019 didi. All rights reserved.
//

#import "Computer.h"
#import "Header.h"

@implementation Computer

-(id)init
{
    _cpoint_ = 0;
    _res = [NSDictionary dictionaryWithObjectsAndKeys:@"剪刀",@(1),@"石头",@(2),@"布",@(3), nil];
    return self;
}
-(void)pushes
{

    int value = arc4random() % 3 + 1;
    NSNumber* tmp = [NSNumber numberWithInt:value];
    _cli_ = _res[tmp];
    NSLog(@"机器人出%@",_cli_);
}
@end

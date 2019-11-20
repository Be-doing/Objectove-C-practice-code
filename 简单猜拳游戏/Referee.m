//
//  Referee.m
//  简单猜拳游戏
//
//  Created by didi on 2019/11/20.
//  Copyright © 2019 didi. All rights reserved.
//

#import "Referee.h"
#import "Human.h"
#import "Computer.h"
@implementation Referee
-(void)intrSelf
{
    
}
-(BOOL)judgeVictoryOrDefeat:(NSString*)left :(NSString*)right
{
    if([left isEqualToString:@"石头"] && [right isEqualToString:@"剪刀"])
    {
        return true;
    }
    else if([left isEqualToString:@"布"] && [right isEqualToString:@"石头"])
    {
        return true;
    }
    else if([left isEqualToString:@"剪刀"] && [right isEqualToString:@"布"])
    {
        return true;
    }
    return false;
}
-(void)playGame
{
    NSLog(@"第一，绝对不意气用事；第二，绝对不漏判任何一件坏事；\
          第三，绝对裁判的公正漂亮，裁判机器人蜻蜓队长前来觐见！");
    Human* people = [[Human alloc]init];
    Computer* computer = [Computer new];
    while(1)
    {
        if(![people punches])
        {
            continue;
        }
        [computer pushes];
        if([people.cli_ isEqualToString:computer.cli_])
        {
            NSLog(@"平局");
            continue;
        }
        else if([self judgeVictoryOrDefeat:people.cli_ :computer.cli_])
        {
            NSLog(@"%@胜利",people.name_);
            people.point_ += 1;
        }
        else
        {
            NSLog(@"阿尔法胜利");
            computer.cpoint_ += 1;
        }
        NSLog(@"现在比分%@:阿尔法 == %d : %d",people.name_, people.point_, computer.cpoint_);
        NSLog(@"按1继续，2退出");
        int tmp = 1;
        if(scanf("%d",&tmp))
        {
            if(tmp == 1)
            {
                continue;
            }
            else if(tmp == 2)
            {
                NSLog(@"感谢参与");
                break;
            }
            else
            {
                NSLog(@"输入非法,推出游戏");
                break;
            }
        }
    }
}
@end

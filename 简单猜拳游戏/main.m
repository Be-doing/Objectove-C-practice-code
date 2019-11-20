//
//  main.m
//  简单猜拳游戏
//
//  Created by didi on 2019/11/20.
//  Copyright © 2019 didi. All rights reserved.
//

#import "Referee.h"
int main(int argc, const char * argv[]) {
    Referee* game = [Referee new];
    [game playGame];
    return 0;
}

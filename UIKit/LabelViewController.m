//
//  ViewController.m
//  UILabel的使用
//
//  Created by didi on 2019/11/18.
//  Copyright © 2019 didi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //初始化一个label
    UILabel* lab = [[UILabel alloc]initWithFrame:CGRectMake(10, 200, 300, 30)];
//自有属性设置
    //设置文字
    lab.text = @"我是第一个标签，请多多关照。";
    //设置大小
    lab.font = [UIFont systemFontOfSize:30];
    //设置粗体
    lab.font = [UIFont boldSystemFontOfSize:30];
    //设置斜体(只对英文字符有效)
    lab.font = [UIFont italicSystemFontOfSize:30];
    //设置颜色
    lab.textColor = [UIColor redColor];
    //设置阴影
    lab.shadowColor = [UIColor greenColor];
    //设置文字的对齐方式
    lab.textAlignment = NSTextAlignmentCenter;
    //设置高亮
    lab.highlighted = YES;
    lab.highlightedTextColor = [UIColor blueColor];
    //设置标签行数,一般设置为0，一直会换行
    lab.numberOfLines = 0;
    //设置字体大小自适应
    lab.adjustsFontSizeToFitWidth = YES;
    //设置文字大小缩小比例
    lab.minimumScaleFactor = 0.7;
    //设置透明度
    lab.alpha = 0.8;
    //设置背景
    lab.backgroundColor = [UIColor purpleColor];
    //设置透明度
    lab.alpha = 0.8;
    //设置隐藏
    lab.hidden = NO;
    //设置边框宽度
    lab.layer.borderWidth = 5;
    //设置边框颜色
    lab.layer.backgroundColor = [UIColor orangeColor].CGColor;
    //设置圆角
    lab.layer.cornerRadius = 10;
    //设置阴影
    lab.layer.shadowOffset = CGSizeMake(20, 20);
    lab.layer.shadowColor = [UIColor redColor].CGColor;
    lab.layer.shadowOpacity = 1;
    [self.view addSubview:lab];
}


@end

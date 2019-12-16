//
//  ViewController.m
//  UIPageControl的使用
//
//  Created by didi on 2019/12/15.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /**
     分页控制器
     */
    //初始化-一个分页控制器
    UIPageControl * page = [[UIPageControl alloc] initWithFrame:CGRectMake(100,100,100,100)];
    //设置分页控制器页数
    page.numberOfPages = 6;
    //设置选中业的索引
    page.currentPage=0;
    //设置背景颜色
    page.backgroundColor = [UIColor grayColor];
    //当只有一个页的时候，点点是否隐藏
    page.hidesForSinglePage = YES;
    //代码更新点点位置
    page.defersCurrentPageDisplay = YES;
    //其他页点点的颜色
    page.pageIndicatorTintColor = [UIColor orangeColor];
    //当前页点点的颜色
    page.currentPageIndicatorTintColor = [UIColor redColor];
    
    
    
    /**
     步进控制器
     */
    //初始化一个UIStepper
    UIStepper *stepper = [[UIStepper alloc]initWithFrame:CGRectMake(100, 400, 100, 100)];
    //设置点击事件
    [stepper addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    //设置是否是点击就触发还是点击抬起后触发
    stepper.continuous = YES;//(YES则点击就触发)
    //设置最大值与最小值
    stepper.maximumValue = 10;
    stepper.minimumValue = 0;
    //设置sUIStepper对象的value是否连续改变
    stepper.autorepeat = NO;
    //设置值循环改变
    stepper.wraps = YES;
    //设置每次增加的值
    stepper.stepValue = 1;
    //设置按钮颜色
    stepper.tintColor = [UIColor redColor];
    //设置按钮背景颜色
    stepper.backgroundColor = [UIColor blueColor];
    [self.view addSubview:page];
    [self.view addSubview:stepper];
}

-(void)click:(UIStepper*)stepper
{
    NSLog(@"%f",stepper.value);
    NSLog(@"点击了一次");
}
@end

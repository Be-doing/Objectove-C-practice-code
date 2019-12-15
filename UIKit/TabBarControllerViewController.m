//
//  ViewController.m
//  UISegmentControl的使用
//
//  Created by didi on 2019/11/19.
//  Copyright © 2019 didi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UISegmentedControl* seg = [[UISegmentedControl alloc]initWithItems:@[@"一",@"二",@"三",@"四",@"五"]];
    seg.frame = CGRectMake(10, 50, 200, 30);
    
    //短暂性的点击
    seg.momentary = YES;
    //按钮大小与内容自适应
    seg.apportionsSegmentWidthsByContent = YES;
    //指定位置插入一个按钮
    [seg insertSegmentWithTitle:@"插入的按钮" atIndex:1 animated:YES];
    // insertSegmentWithImage:(nullable UIImage *) atIndex:(NSUInteger) animated:(BOOL)
    //移除某一个按钮
    [seg removeSegmentAtIndex:1 animated:YES];
    //移除所有按钮
    [seg removeAllSegments];
    //重新按钮设置标题
    [seg setTitle:@"设置的标题" forSegmentAtIndex:1];
    //设置按钮的宽度
    [seg setWidth:10 forSegmentAtIndex:1];
    //设置按钮内容的偏移量
    [seg setContentOffset:CGSizeMake(10, 10) forSegmentAtIndex:1];
    //默认选中的按钮
    seg.selectedSegmentIndex = 1;
    //设置风格颜色
    [seg setTintColor:[UIColor redColor]];
    [self.view addSubview:seg];
}


@end

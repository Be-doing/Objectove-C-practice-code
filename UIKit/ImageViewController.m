//
//  ViewController.m
//  UIImageView的使用
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
    
    //创建图片视图
    UIImageView *mageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 448, 950)];
    //创建图片
    UIImage* img = [UIImage imageNamed:@"homepage.jpg"];
    mageView.image = img;
    //设置拉伸方式，确定一个坐标点的拉伸
    img = [img stretchableImageWithLeftCapWidth:150 topCapHeight:150];
    //设置高亮时的图片
    mageView.highlightedImage = [UIImage imageNamed:@"nextpage.jpg"];
    //设置高亮状态
    mageView.highlighted = YES;
    
   
    [self.view addSubview:mageView];
}


@end

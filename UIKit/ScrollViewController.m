//
//  ViewController.m
//  UIScrollView的使用
//
//  Created by didi on 2019/12/13.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong) UIScrollView *scrollView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _scrollView = [[UIScrollView alloc]initWithFrame:self.view.frame];
    _scrollView.backgroundColor = [UIColor grayColor];
    
    UILabel *testLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [testLabel setBackgroundColor:[UIColor blueColor]];
    
    //设置内容区域
    _scrollView.contentSize = CGSizeMake(self.view.frame.size.width* 2, self.view.frame.size.height * 2);
    //设置内容区域偏移
    _scrollView.contentOffset = CGPointMake(self.view.frame.size.width, 0);
    //设置内容区域大小的偏移
    _scrollView.contentInset = UIEdgeInsetsMake(0, self.view.frame.size.width, 0, 0);
    //设置代理
    _scrollView.delegate = self;
    //设置方向锁定
    _scrollView.directionalLockEnabled = YES;
    //设置是否允许回弹
    _scrollView.bounces = YES;
    //是否显示水平和垂直的滚动线条
    _scrollView.showsVerticalScrollIndicator = YES;
    _scrollView.showsHorizontalScrollIndicator = NO;
    //设置滚动线条的偏移量
    _scrollView.scrollIndicatorInsets = UIEdgeInsetsMake(0, 0, 0, 20);
    //设置滚动线条的风格
    /**
     UIScrollViewIndicatorStyleDefault,     // Automatically switches appearance based on the user interface style
     UIScrollViewIndicatorStyleBlack,       // Dark indicator, for use on light backgrounds
     UIScrollViewIndicatorStyleWhite
     */
    _scrollView.indicatorStyle = UIScrollViewIndicatorStyleBlack;
    
    //
    [_scrollView addSubview:testLabel];
    [self.view addSubview:_scrollView];
}


@end

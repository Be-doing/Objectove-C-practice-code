//
//  ViewController.m
//  UIActivityIndicatorView的使用
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
    //初始化一个指示器
    UIActivityIndicatorView *actview = [[UIActivityIndicatorView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    //开始指示动画
    [actview startAnimating];
    //设置指示器风格
    [actview setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleMedium];
    /**
     UIActivityIndicatorViewStyleMedium  API_AVAILABLE(ios(13.0), tvos(13.0)) = 100,
     UIActivityIndicatorViewStyleLarge   API_AVAILABLE(ios(13.0), tvos(13.0)) = 101,
     
     //下面的都被废弃了
     UIActivityIndicatorViewStyleWhiteLarge API_DEPRECATED_WITH_REPLACEMENT("UIActivityIndicatorViewStyleLarge", ios(2.0, 13.0), tvos(9.0, 13.0)) = 0,
     UIActivityIndicatorViewStyleWhite API_DEPRECATED_WITH_REPLACEMENT("UIActivityIndicatorViewStyleMedium", ios(2.0, 13.0), tvos(9.0, 13.0)) = 1,
     UIActivityIndicatorViewStyleGray API_DEPRECATED_WITH_REPLACEMENT("UIActivityIndicatorViewStyleMedium", ios(2.0, 13.0)) API_UNAVAILABLE(tvos) = 2,
     */
    //设置指示器颜色
    actview.color = [UIColor orangeColor];
    /**
     自定义的指示器采用UIImageView
     */
    
    
    /**
     进度条
     */
    //初始化一个进度条
    UIProgressView *progressView = [[UIProgressView alloc]initWithFrame:CGRectMake(100, 200, 100, 100)];
    //设置进度条的风格
    [progressView setProgressViewStyle:UIProgressViewStyleDefault];
    /**
     UIProgressViewStyleDefault,     // normal progress bar
     UIProgressViewStyleBar API_UNAVAILABLE(tvos),     // for use in a toolbar
     */
    //设置进度条的值
    progressView.progress = 0.5;
    //设置走过部分的颜色
    progressView.progressTintColor = [UIColor orangeColor];
    //设置未走过部分的颜色
    progressView.trackTintColor = [UIColor grayColor];
    [self.view addSubview:actview];
    [self.view addSubview:progressView];
}


@end

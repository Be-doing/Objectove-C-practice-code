//
//  ViewController.m
//  UISlider的使用
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
    //创建UISlider控件对象
    UISlider * slider = [[UISlider alloc ]initWithFrame:CGRectMake(20, 100, 280,40)];
    //设置控件触发方法
    [slider addTarget:self action:@selector(changeBG:) forControlEvents: UIControlEventValueChanged];
    //设置滑块的最小值
    slider.minimumValue = 0;
    //设置滑块的最大值
    slider.maximumValue = 100;
    //设置滑块最值的图片(最小值同理)
    slider.minimumValueImage = [UIImage imageNamed:@"minImage.jpg"];
    //设置触发方法是否是连续处罚
    slider.continuous = NO;//(停止滑动是触发)
    //设置划过部分的颜色
    slider.minimumTrackTintColor = [UIColor orangeColor];
    //设置未划过的b部分要色
    slider.maximumTrackTintColor = [UIColor grayColor];
    //设置滑块的颜色
    slider.thumbTintColor = [UIColor redColor];
    //给滑块设置一个值
    [slider setValue:10];
    
    /**以下是自定义线条和滑块的方法
     - (void)setThumbImage:(nullable UIImage *)image forState:(UIControlState)state;
     - (void)setMinimumTrackImage:(nullable UIImage *)image forState:(UIControlState)state;
     - (void)setMaximumTrackImage:(nullable UIImage *)image forState:(UIControlState)state;
     */
    UISwitch *uiswitch = [[UISwitch alloc]initWithFrame:CGRectMake(100, 100, 30, 30)];
    [uiswitch addTarget:self action:@selector(click:) forControlEvents:UIControlEventValueChanged];
    //设置打开时的颜色
    uiswitch.onTintColor = [UIColor orangeColor];
    //设置关闭时的颜色
    uiswitch.tintColor = [UIColor whiteColor];
    //设置按钮的颜色
    uiswitch.thumbTintColor = [UIColor blueColor];
    
    [self.view addSubview:slider];
    [self.view addSubview:uiswitch];
}

-(void)changeBG:(UISlider*)slider
{
    NSLog(@"%f",slider.value);
}

-(void)click:(UISwitch*)us
{
    NSLog(@"打开");
}
@end

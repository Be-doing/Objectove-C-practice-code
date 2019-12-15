//
//  ViewController.m
//  UIBouton的使用
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
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeSystem];
    /**UIButtonType常用风格
     UIButtonTypeCustom = 0,                         // no button type自定义无风格
     UIButtonTypeSystem API_AVAILABLE(ios(7.0)),  // standard system button系统风格按钮
     UIButtonTypeDetailDisclosure,                   //详情风格按钮
     UIButtonTypeInfoLight,                               //详情风格按钮
     UIButtonTypeInfoDark,                               //详情风格按钮
     UIButtonTypeContactAdd,                          //加号按钮
     */
    //设置大小
    btn.frame = CGRectMake(100, 100, 100, 100);
    //设置背景颜色
    btn.backgroundColor = [UIColor redColor];
    //设置文字
    [btn setTitle:@"按钮" forState:UIControlStateNormal];
    /**UIControlState常用状态
     UIControlStateNormal       = 0,    标准状态
     UIControlStateHighlighted  = 1 << 0,  高亮状态(点击按下后的状态) // used when UIControl isHighlighted is set
     UIControlStateDisabled     = 1 << 1,   //无效状态
     UIControlStateSelected     = 1 << 2,   //选择状态
     */
    //设置按钮背景图片
    [btn setBackgroundImage:[UIImage imageNamed:@"btn.png"] forState:UIControlStateNormal];
    //图片填充按钮
    [btn setImage:[UIImage imageNamed:@"btn.png"] forState:UIControlStateNormal];
    /**forState
     同上
     */
    //设置按钮内容的偏移量
    btn.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 30, 0);
    btn.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 10, 10);
    btn.titleEdgeInsets = UIEdgeInsetsMake(30, 0, 0, 0);
    //按钮高亮时，图片是否d灰度处理
    btn.adjustsImageWhenHighlighted = YES;
    //是否开启模拟触摸效果(发光)
    btn.showsTouchWhenHighlighted = YES;
    //设置按钮默认颜色
    btn.backgroundColor = [UIColor grayColor];
    //设置系统风格的按钮颜色
    btn.tintColor = [UIColor redColor] ;
    //设置按钮某种状态下标题颜色
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    //设置按钮标题z大小
    btn.titleLabel.font = [UIFont boldSystemFontOfSize:25];
    //设置按钮是否有效
    //layerc层
    //设置圆角
    btn.layer.cornerRadius = 10;
    //设置事件
    [btn addTarget:self action:@selector(clik:) forControlEvents:UIControlEventTouchUpInside];
     [self.view addSubview:btn];
}
-(void)clik:(UIButton*)btn
{
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
}

@end

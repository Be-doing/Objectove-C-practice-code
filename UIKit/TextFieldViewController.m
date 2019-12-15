//
//  ViewController.m
//  UITextField的使用
//
//  Created by didi on 2019/12/14.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITextField* uf = [[UITextField alloc]initWithFrame:CGRectMake(20, 100, 200, 50)];
     //设置出事文字
     uf.text = @"我是一个输入框";
     //设置文字颜色
     uf.textColor = [UIColor redColor];
     //设置文字大小
     uf.font = [UIFont boldSystemFontOfSize:17];
     //设置文字对齐方式
     uf.textAlignment = NSTextAlignmentCenter;
     //设置输入框的风格
     uf.borderStyle = UITextBorderStyleBezel;
     /**
      UITextBorderStyleNone,//无边框
      UITextBorderStyleLine,//带线条
      UITextBorderStyleBezel,//带阴影的线条
      UITextBorderStyleRoundedRect//带圆角的浅色线条
      */
    //设置提示文字
     uf.placeholder = @"请输入内容";
    //是否开始编辑时清空文字
    uf.clearsOnBeginEditing = YES;
    //设置文字大小是否自适应
    uf.adjustsFontSizeToFitWidth = YES;
    //自适应的最小字体大小
    uf.minimumFontSize = 17;
    //设置清除按钮的现实模式(输入框右侧的x)
    uf.clearButtonMode = UITextFieldViewModeWhileEditing;
    /**
     UITextFieldViewModeNever,//从不
     UITextFieldViewModeWhileEditing,//正在编辑时
     UITextFieldViewModeUnlessEditing,//不编辑时
     UITextFieldViewModeAlways//总是出现
     */
    //设置左视图
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    view.backgroundColor = [UIColor grayColor];
    uf.leftView = view;
    //设置左视图显示模式
    uf.leftViewMode = UITextFieldViewModeAlways;//同上
    //右视图设置同左视图
    //设置通知
    /**
     UIKIT_EXTERN NSNotificationName const UITextFieldTextDidBeginEditingNotification;开始编辑通知
     UIKIT_EXTERN NSNotificationName const UITextFieldTextDidEndEditingNotification;//结束编辑通知
     UIKIT_EXTERN NSNotificationName const UITextFieldTextDidChangeNotification;//内容改变时通知
     */
    //注册一个观察者
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(testObserver) name:UITextFieldTextDidBeginEditingNotification object:nil];
    
    
     [self.view addSubview:uf];
}

-(void)testObserver
{
    NSLog(@"开始编辑");
}
@end

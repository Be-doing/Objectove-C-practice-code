//
//  ViewController.m
//  UIALterController的使用
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
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    /**
     UIAlertController必须经过触发才会出现，因此设置在点击屏幕的方法中演示，不再设置在viewDidLoad中
     */
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"我是标题" message:@"我是提示文字" preferredStyle:UIAlertControllerStyleAlert];
    /**
     UIAlertControllerStyleActionSheet = 0,//从底部出现的抽屉风格
     UIAlertControllerStyleAlert//弹窗d风格
     除文本框之外，基本使用方法相同
     */
    
    /**
     如果是两个一下的按钮，则会出现在一行。两个以上则会是垂直分布。
     */
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    /**style的枚举如下
     UIAlertActionStyleDefault = 0, 默认
     UIAlertActionStyleCancel,       取消风格(如果是两个按钮，则取消风格的按钮一直在最左边，如果是三个按钮则会出现最下边)
     UIAlertActionStyleDestructive 红色风格
     */
    
    /**handler
     设置点击事件
     */
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:nil];
    
    //设置一个高亮的按钮
    alert.preferredAction = alert.actions.firstObject;
    //添加一个文本输入框
    /**注意！！！
     UIAlertControllerStyleActionSheet不能添加文本框
     */
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.text = @"默认文字";
        textField.textColor = [UIColor orangeColor];
    }];
    [alert addAction:cancelAction];
    [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:nil];

}

@end

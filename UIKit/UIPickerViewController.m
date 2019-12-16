//
//  ViewController.m
//  UIPickerView
//
//  Created by didi on 2019/12/15.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIPickerView *pickerview = [[UIPickerView alloc]initWithFrame:CGRectMake(50, 100, 300, 100)];
    //设置代理
    pickerview.delegate = self;
    //设置数据源
    pickerview.dataSource = self;
    
    
    
    /**
     时间选择器
     */
    UIDatePicker *datePicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(50, 300, 300, 100)];
    //设置显示模式
    /**
     UIDatePickerModeTime,
     UIDatePickerModeDate,
     UIDatePickerModeDateAndTime,
     UIDatePickerModeCountDownTimer, 计时模式
     */
    datePicker.datePickerMode = UIDatePickerModeDateAndTime;
    
    
    [self.view addSubview:pickerview];
    [self.view addSubview:datePicker];
}
//返回分区数(分区数，在一行排列)
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 5;
}
//返回分区的行数
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 5;
}
//返回每个分区每个行的标题
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [NSString stringWithFormat:@"我是第%ld行", row];
}

@end

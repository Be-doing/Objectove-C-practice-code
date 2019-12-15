//
//  ViewController.m
//  UISeaherBar的使用
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
    
    
    //搜索框
    UISearchBar* sh = [[UISearchBar alloc]initWithFrame:CGRectMake(10, 40, 400, 30)];
    //设置搜索栏风格
    sh.barStyle = UIButtonTypeSystem;
    //输入默认文字
    sh.text = @"搜索";
    //输入搜索框文字背景
    sh.prompt=@"输入关键字";
    //输入缺省文字
    sh.placeholder = @"输入关键字";
    //展示图书标志
    sh.showsBookmarkButton = YES;
    //展示取消标志
    sh.showsCancelButton = YES;
    //展示搜索结果按钮
    sh.showsSearchResultsButton = YES;
    //改变搜索栏光标颜色
    sh.tintColor = [UIColor redColor];
    //改变系统搜索栏背景颜色
    sh.barTintColor = [UIColor blueColor];
    //改变搜索区域的风格；
    sh.searchBarStyle = UISearchBarStyleDefault;
    /**
     UISearchBarStyleDefault,    // currently UISearchBarStyleProminent
     UISearchBarStyleProminent,  // used my Mail, Messages and Contacts
     UISearchBarStyleMinimal     // used by Calendar, Notes and Music
     */
    //搜索栏下面附加按钮
    sh.showsScopeBar = YES;
    sh.scopeButtonTitles = @[@"第一页",@"第二页",@"第三页",@"第四页"];
    sh.selectedScopeButtonIndex = YES;
    [self.view addSubview:sh];
    //设置键盘上方的一个视图
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 40)];
    view.backgroundColor = [UIColor grayColor];
    UILabel* label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 40)];
    label.text = @"这是附加的提示";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    [view addSubview:label];
    sh.inputAccessoryView = view;
    
}

@end

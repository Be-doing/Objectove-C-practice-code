//
//  ViewController.m
//  UITableView的使用
//
//  Created by didi on 2019/11/22.
//  Copyright © 2019 didi. All rights reserved.
//

#import "ViewController.h"
#import "PhoneNumberData.h"
/**
 需要遵循如下两个协议
 */
@interface ViewController ()<UITableViewDelegate, UITableViewDataSource> {
    UITableView* tableview_;
    NSMutableArray* members_;//数据源：联系人模型
    NSIndexPath* selectedindexpath_;
    UITextField* tmp;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    // Do any additional setup after loading the view.
    tableview_ = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-40) style:UITableViewStyleGrouped];
    /*
     UITableViewStylePlain,          默认的格式平铺
     UITableViewStyleGrouped,        分组
     UITableViewStyleInsetGrouped
     */
    
    //设置代理
    tableview_.delegate = self;
    //设置数据源
    tableview_.dataSource=self;
    //是否显示分隔线
    /**
     UITableViewCellSeparatorStyleNone,                 不显示分隔线
     UITableViewCellSeparatorStyleSingleLine,          默认单线
     UITableViewCellSeparatorStyleSingleLineEtched 内嵌线，只有在 UITableView 为 group 类型时才起作用
     NS_ENUM_DEPRECATED_IOS(2_0, 11_0, "Use UITableViewCellSeparatorStyleSingleLine for a single line separator.")
     */
    tableview_.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    //是否估计行高
    tableview_.estimatedRowHeight = 0;
    //是否估计分区头高度
    tableview_.estimatedSectionHeaderHeight = 0;
    //是否估计分区尾高度
    tableview_.estimatedSectionFooterHeight = 0;
    //是否显示垂直滚动线
    tableview_.showsVerticalScrollIndicator = NO;
    //是否显示水平滚动线
    tableview_.showsHorizontalScrollIndicator = NO;
    //继承自UIScrollView的属性，是否设置内容大小的偏移，就是内容边框的大小
    tableview_.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
    //设置分割线与内容的偏移
    tableview_.separatorInset = UIEdgeInsetsMake(0, 100, 0, 0);
    //是否允许滚动
    tableview_.scrollEnabled = YES;
    //设置整个TableView尾视图，头视图同理
    tableview_.tableFooterView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 10)];
    
    
    UIButton* button = [[UIButton alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height - 40, self.view.frame.size.width, 30)];
    
    [button setTitle:@"编辑" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    //[button setTintColor:[UIColor redColor]];
    [button setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:button];
    [self.view addSubview:tableview_];
    
}
/*UITableView的按钮的使用*/
#pragma mark 按钮事件
-(void)click:(UIButton*)btn {
    if(tableview_.isEditing) {
        tableview_.editing = NO;
        [btn setTitle:@"编辑" forState:UIControlStateNormal];
    }else{
         tableview_.editing = YES;
         [btn setTitle:@"完成" forState:UIControlStateNormal];
    }
}
/*同上述按钮进行tableview的编辑风格*/
#pragma mark tableview的编辑风格
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section % 2  == 0)
        return UITableViewCellEditingStyleInsert;
    else
        return UITableViewCellEditingStyleDelete;
}
#pragma mark 编辑状态下的功能按钮事件
 -(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"功能按钮触发");
    
}
/*数据源的初始化*/
#pragma mark 加载数据
-(void)initData {
    members_ =[[NSMutableArray alloc]init];
    
    PhoneNumberData* data1=[[PhoneNumberData alloc]initWithName:@"曹操"  andPhoneNumber:@"185****1234"];
    PhoneNumberData* data2=[[PhoneNumberData alloc]initWithName:@"曹仁"  andPhoneNumber:@"185****5678"];
    ContactGroup* group1=[[ContactGroup alloc] initWithName:@"曹" andDetail:@"曹氏的盆友们" andContacts:[NSMutableArray arrayWithObjects:data1,data2, nil]];
    [members_ addObject:group1];
    

    
   PhoneNumberData* data3=[[PhoneNumberData alloc]initWithName:@"夏侯惇"  andPhoneNumber:@"175****1234"];
    PhoneNumberData* data4=[[PhoneNumberData alloc]initWithName:@"夏侯渊"  andPhoneNumber:@"175****5678"];
    ContactGroup* group2= [[ContactGroup alloc] initWithName:@"夏" andDetail:@"魏国的将军" andContacts:[NSMutableArray arrayWithObjects:data3,data4, nil]];
    [members_ addObject:group2];
    
    
    
    PhoneNumberData* data5=[[PhoneNumberData alloc]initWithName:@"孙权"  andPhoneNumber:@"185****3456"];
    PhoneNumberData* data6=[[PhoneNumberData alloc]initWithName:@"孙策"  andPhoneNumber:@"185****5665"];
    ContactGroup* group3=[[ContactGroup alloc] initWithName:@"孙" andDetail:@"东吴大兄弟" andContacts:[NSMutableArray arrayWithObjects:data5,data6, nil]];
    [members_ addObject:group3];
    
    
   
    PhoneNumberData* data7=[[PhoneNumberData alloc]initWithName:@"吕布"  andPhoneNumber:@"185****3233"];
    PhoneNumberData* data8=[[PhoneNumberData alloc]initWithName:@"吕奉先"  andPhoneNumber:@"185****0000"];
    ContactGroup* group4=[[ContactGroup alloc] initWithName:@"吕" andDetail:@"三国战神" andContacts:[NSMutableArray arrayWithObjects:data7,data8, nil]];
    [members_ addObject:group4];
}
#pragma mark - 代理方法
#pragma mark 设置分区数
-(NSInteger)numberOfSectionsInTableView:(UITableView*)tableView {
    NSLog(@"计算分组数");
    return members_.count;
}

#pragma mark 设置每个分区的行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"计算第%zu组的行数",section);
    ContactGroup* group1=members_[section];
    return group1.member_.count;
}

#pragma mark 返回每行的单元格
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //NSIndexPath是一个结构体，记录了组和行信息
    NSLog(@"生成第%zu个分区第%ld行)",indexPath.section,indexPath.row);
    
    ContactGroup* group = members_[indexPath.section];
    PhoneNumberData* datatmp = group.member_[indexPath.row];
    //复用cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId"];
    if(!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    }
    cell.textLabel.text= datatmp.name_;
    cell.detailTextLabel.text= datatmp.phoneNumber_;
    
    return cell;
}

#pragma mark 返回每组头标题名称
-(NSString*)tableView:(UITableView*)tableView titleForHeaderInSection:(NSInteger)section {
    NSLog(@"生成第%zu个分区的名称",section);
    ContactGroup* tmpgroup = members_[section];
    return tmpgroup.gname_;
}

#pragma mark 返回每组尾部说明
-(NSString*)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    NSLog(@"生成尾部第%zu个分区的详情",section);
    ContactGroup* group = members_[section];
    return group.description_;
}
/*计算索引*/
#pragma mark 返回每组标题索引
-(NSArray*)sectionIndexTitlesForTableView:(UITableView*)tableView {
    NSLog(@"生成组索引");
    NSMutableArray* indexs=[[NSMutableArray alloc]init];
    for(ContactGroup* group in members_) {
        [indexs addObject:group.gname_];
    }
    return indexs;
}
#pragma mark 设置分区头视图
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 30)];
    view.backgroundColor = [UIColor blueColor];
    return view;
}
#pragma mark 设置分区尾视图
-(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 30)];
    view.backgroundColor = [UIColor redColor];
    return view;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 30;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 30;
}
#pragma mark -


#pragma mark 点击的事件
-(void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath {
    selectedindexpath_=indexPath;
    ContactGroup* group=members_[indexPath.section];
    PhoneNumberData* contact=group.member_[indexPath.row];
    //创建弹出窗口
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"修改" message:nil preferredStyle:  UIAlertControllerStyleAlert];
    
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
          NSLog(@"点击了Cancel");
      }];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        contact.phoneNumber_ = self->tmp.text;
        [self->tableview_ reloadData];
        NSLog(@"点击了OK");
      }];
    
    //dkhdjUITextView* textview = [UITextView new];
    [alert addAction:cancelAction];
    [alert addAction:okAction];
    
    /*定义文本输入框*/
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
            self->tmp = textField;
        }];
    [self presentViewController:alert animated:YES completion:nil];

}
@end

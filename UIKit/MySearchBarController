

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource, UISearchResultsUpdating>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UISearchController *searchController;
// 数据源数组
@property (nonatomic, strong) NSMutableArray *datas;
// 搜索结果数组
@property (nonatomic, strong) NSMutableArray *results;
@end

@implementation ViewController

/**
 // 初始化方法, 参数是展示搜索结果的控制器, 如果是在当前控制器展示搜索结果, 就传nil
 - (instancetype)initWithSearchResultsController:(nullable UIViewController *)searchResultsController;

 // 负责更新搜索结果的代理, 需要遵循 UISearchResultsUpdating 协议
 @property (nullable, nonatomic, weak) id <UISearchResultsUpdating> searchResultsUpdater;

 // 搜索控制器是否是活跃状态, 当在一个控制器展示搜索结果的时候, 可以此来判断返回的数据源
 @property (nonatomic, assign, getter = isActive) BOOL active;
 // 控制器代理  遵循 UISearchControllerDelegate协议
 @property (nullable, nonatomic, weak) id <UISearchControllerDelegate> delegate;
 // 当搜索框激活时, 是否添加一个透明视图
 @property (nonatomic, assign) BOOL dimsBackgroundDuringPresentation __TVOS_PROHIBITED;
 @property (nonatomic, assign) BOOL obscuresBackgroundDuringPresentation NS_AVAILABLE_IOS(9_1); // default is YES
 // 当搜索框激活时, 是否隐藏导航条
 @property (nonatomic, assign) BOOL hidesNavigationBarDuringPresentation;     // default is YES

 @property (nullable, nonatomic, strong, readonly) UIViewController *searchResultsController;
 @property (nonatomic, strong, readonly) UISearchBar *searchBar;
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpDatas];
    self.tableView.tableHeaderView = self.searchController.searchBar;
}

// 视图显示的时候, 隐藏系统导航  使用自定义导航
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    if (self.navigationController) {
        
        self.navigationController.navigationBarHidden = YES;
    }
}
// 视图消失的时候, 将系统导航恢复
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    if (self.navigationController) {
        self.navigationController.navigationBarHidden = NO;
    }
}

- (void)setUpDatas {
    if (self.datas) {
        for (int i = 0; i < 100; ++i) {
            [self.datas addObject:[NSString stringWithFormat:@"测试数据--%d",i]];
        }
    }
}

#pragma mark - UITableViewDelegate && UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // 这里通过searchController的active属性来区分展示数据源是哪个
    if (self.searchController.active) {
        
        return self.results.count ;
    }
    
    return self.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
    }
    
    // 这里通过searchController的active属性来区分展示数据源是哪个
    if (self.searchController.active ) {
        cell.textLabel.text = [self.results objectAtIndex:indexPath.row];
    } else {
        cell.textLabel.text = [self.datas objectAtIndex:indexPath.row];
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (self.searchController.active) {
        NSLog(@"选择了搜索结果中的%@", [self.results objectAtIndex:indexPath.row]);
    } else {
        NSLog(@"选择了列表中的%@", [self.datas objectAtIndex:indexPath.row]);
    }
    
}

#pragma mark - UISearchResultsUpdating
- (void)updateSearchResultsForSearchController:(UISearchController *)searchController {
    
    NSString *inputStr = searchController.searchBar.text ;
    if (self.results.count > 0) {
        [self.results removeAllObjects];
    }
    for (NSString *str in self.datas) {
        
        if ([str.lowercaseString rangeOfString:inputStr.lowercaseString].location != NSNotFound) {
            
            [self.results addObject:str];
        }
    }
    
    [self.tableView reloadData];
}

#pragma mark - getter
- (UITableView *)tableView {
    if (_tableView == nil) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [self.view addSubview:_tableView];
    }
    
    return _tableView;
}

- (NSMutableArray *)datas {
    if (_datas == nil) {
        _datas = [NSMutableArray arrayWithCapacity:0];
    }
    
    return _datas;
}

- (NSMutableArray *)results {
    if (_results == nil) {
        _results = [NSMutableArray arrayWithCapacity:0];
    }
    
    return _results;
}

- (UISearchController *)searchController {
    if (!_searchController) {
        // 创建UISearchController, 这里使用当前控制器来展示结果
        _searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
        // 设置结果更新代理
        _searchController.searchResultsUpdater = self;
        // 因为在当前控制器展示结果, 所以不需要这个透明视图
        _searchController.dimsBackgroundDuringPresentation = NO;
        
        //设置搜索栏风格
        _searchController.searchBar.barStyle = UIButtonTypeSystem;
        //输入默认文字
        _searchController.searchBar.text = @"搜索";
        //输入搜索框文字背景
        _searchController.searchBar.prompt=@"输入关键字";
        //输入缺省文字
        _searchController.searchBar.placeholder = @"输入关键字";
        //展示图书标志
        _searchController.searchBar.showsBookmarkButton = YES;
        //展示取消标志
        _searchController.searchBar.showsCancelButton = YES;
        //展示搜索结果按钮
        _searchController.searchBar.showsSearchResultsButton = YES;
        //改变搜索栏光标颜色
        _searchController.searchBar.tintColor = [UIColor redColor];
        //改变系统搜索栏背景颜色
        _searchController.searchBar.barTintColor = [UIColor blueColor];
        //改变搜索区域的风格；背景风格
        _searchController.searchBar.searchBarStyle = UISearchBarStyleDefault;
        /**
         UISearchBarStyleDefault,    // currently UISearchBarStyleProminent
         UISearchBarStyleProminent,  // used my Mail, Messages and Contacts
         UISearchBarStyleMinimal     // used by Calendar, Notes and Music
         */
        //搜索栏下面附加按钮
        _searchController.searchBar.showsScopeBar = YES;
        _searchController.searchBar.scopeButtonTitles = @[@"第一页",@"第二页",@"第三页",@"第四页"];
        _searchController.searchBar.selectedScopeButtonIndex = YES;
        //设置键盘上方的一个视图
        UIView* view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 40)];
        view.backgroundColor = [UIColor grayColor];
        UILabel* label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 40)];
        label.text = @"这是附加的提示";
        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = [UIColor whiteColor];
        [view addSubview:label];
        _searchController.searchBar.inputAccessoryView = view;
    }
    return _searchController;
}
@end

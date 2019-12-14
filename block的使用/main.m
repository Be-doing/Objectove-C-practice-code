//
//  main.m
//  block的使用
//
//  Created by didi on 2019/12/10.
//  Copyright © 2019 ios. All rights reserved.
//

//做函数参数
/* void funcWithParm(int (^block)(int))
{
    
}

//做返回值
typedef int (^block_t)(int);

void funcWithParm(block_t blk)
{
    
}
block_t funcWithRet()
{
    return ^int(int parm)
    {
        return parm;
    };
}
 */
#import <Foundation/Foundation.h>
/*int main(int argc, const char * argv[]) {
    //无参无返回值的定义和使用
 void (^blockNothing)(void) = ^{
        NSLog(@"无参无返回值的定义和使用");
    };
    //无参有返回值的定义和使用
    int (^blockWithRet)(void) = ^int{
        NSLog(@"无参无返回值的定义和使用");
        return 1;
    };
    //有参无返回值的定义和使用
    void (^blockWithParm)(int parm) = ^(int count){
        NSLog(@"无参无返回值的定义和使用");
    };
    //有参有返回值的定义和使用
    int (^blockNor)(int parm) = ^ int (int parm){
        NSLog(@"无参无返回值的定义和使用");
        return parm;
    };
    
    blockNothing();
    blockWithRet();
    blockWithParm(1);
    blockNor(1);
 
    void (^block)(void) = ^{
        printf("Block\n");
    };
    block();
    return 0;
}
*/

/*
int globalVar = 10;
int main(int argc, const char * argv[]) {
    
    static int staticVar = 20;
    __block int norVar = 30;
    
    void (^block)(void) = ^{
        ++norVar;
        printf("%d %d %d\n",globalVar, staticVar, norVar);
    };
    block();
    return 0;
}*/

//
//void (^globalBlock)(void) = ^{
//    printf("_NSConcreteGlobalBlock\n");
//};
//int main(int argc, const char * argv[]) {
//
//    void (^stackBlock)(void) = ^{
//        printf("_NSConcreteStackBlock\n");
//    };
//
//    globalBlock();
//    stackBlock();
//
//    return 0;
//}

//typedef void (^blk_t)(int);
//blk_t testFunc(int rate)
//{
//    return ^(int parm){
//        printf("return a block with parm %d\n", parm * rate);
//    } ;
//}
//int main(int argc, const char * argv[]) {
//    blk_t res = testFunc(10);
//    res(10);
//    return 0;
//}

//
//typedef void(^blk_t)(void);
//
//void testFunc(blk_t block)
//{
//    block();
//}



//@interface BlockClass : NSObject
//-(id)getBlockArray;
//@end
//@implementation BlockClass
//-(id)getBlockArray
//{
//    int tmpVal = 0;
//    return [[NSArray alloc]initWithObjects: ^{
//        printf("%d\n", tmpVal);
//    },
//  nil];
//}
//@end
//int main(int argc, const char * argv[]) {
//
//    BlockClass *blockclass = [BlockClass new];
//    void (^block)(void) =  [[blockclass getBlockArray] objectAtIndex:0];
//    NSLog(@"%@", [block class]);
//
//    return 0;
//}




/**
 循环引用
 */
typedef void (^blk_t)(void);
@interface MyClass : NSObject
@property(nonatomic, strong) blk_t block;
@end

@implementation MyClass
-(instancetype) init
{
    self = [super init];
    id __weak tmpSelf = self;
    _block = ^{
        NSLog(@"%@",[tmpSelf class]);
    };
    return self;
}
-(void)dealloc
{
    NSLog(@"dealloc");
}
@end
int main(int argc, const char * argv[]){
    MyClass *obj = [MyClass new];
    NSLog(@"%@", [obj class]);
    return 0;
}

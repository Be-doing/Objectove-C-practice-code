//
//  Test.h
//  内存管理
//
//  Created by didi on 2019/11/21.
//  Copyright © 2019 didi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Test:NSObject
{
    NSString* name_;
}
-(id)init;
-(void)print;
+(void)classMuthod;
-(void)instanceMuthod;


@end
@interface Student : Test
{
    int age_;
}
-(id)init;
-(void)print;
-(void)noImplementationMethod;
@end


@interface MyClass : NSObject
-(void)implemationMethod;
-(void)noImplementationMethod;
@end
NS_ASSUME_NONNULL_END

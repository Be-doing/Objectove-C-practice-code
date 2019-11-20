//
//  Computer.h
//  简单猜拳游戏
//
//  Created by didi on 2019/11/20.
//  Copyright © 2019 didi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Header.h"
NS_ASSUME_NONNULL_BEGIN

@interface Computer : NSObject

@property(assign, nonatomic) int cpoint_;
@property(copy, nonatomic) NSString* cli_;
@property (copy, nonatomic) NSDictionary* res;
-(id)init;
-(void)pushes;
@end

NS_ASSUME_NONNULL_END

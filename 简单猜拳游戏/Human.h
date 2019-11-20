//
//  Human.h
//  简单猜拳游戏
//
//  Created by didi on 2019/11/20.
//  Copyright © 2019 didi. All rights reserved.
//


#import "Header.h"
#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

@interface Human : NSObject

@property (copy, nonatomic) NSString* name_;
@property (assign, nonatomic) NSString* cli_;
@property (assign, nonatomic) int point_;
@property (copy, nonatomic) NSDictionary* res;
-(id)init;
-(BOOL)punches;
@end

NS_ASSUME_NONNULL_END

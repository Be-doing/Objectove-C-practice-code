//
//  Classification.h
//  protocol
//
//  Created by didi on 2019/11/28.
//  Copyright © 2019 didi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Protocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface People(Student)

@property(assign, nonatomic) int stunumber;
-(void)showIAmStudent;
-(void)Print;
@end




//分类注意的例子

@interface NSString(ErrorDemo)
- (BOOL)isEqualToString:(NSString *)aString;
@end
NS_ASSUME_NONNULL_END

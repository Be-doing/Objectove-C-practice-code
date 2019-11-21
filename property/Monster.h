//
//  Monster.h
//  property
//
//  Created by didi on 2019/11/14.
//  Copyright © 2019 didi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Monster : NSObject
@property(copy, nonatomic) NSString* strings_;
@property(strong, nonatomic) NSString* stringp_;

-(void)Print;
@end

@interface MyClass : NSObject
{
    int a, b, c, d;
}
@end
NS_ASSUME_NONNULL_END

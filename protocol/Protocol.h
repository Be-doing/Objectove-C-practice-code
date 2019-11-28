//
//  Protocol.h
//  protocol
//
//  Created by didi on 2019/11/15.
//  Copyright © 2019 didi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface People : NSObject
@property(nonatomic, copy)NSString* name_;
@property(nonatomic, assign)NSInteger age_;

-(id)initWithName:(NSString*)name withAge:(NSInteger)age;
-(void)Print;
@end


@protocol MyProtocol
@required
-(void) selfIntroduction;
@end
/*协议*/
@protocol MySubProtocol <MyProtocol>
@optional
-(void) myFunc;
@end

@interface Demo : NSObject<MySubProtocol>
@property(nonatomic, copy) NSString* name_;
@property(nonatomic, copy) NSString* brand_;
@end


/*委托*/

//吃的协议
@protocol Eat
@required
-(void)eatSomething:(NSString*)foodname;
@optional
-(void)goToEat;
@end


//舍友类
@interface Roommate : NSObject
@property(nonatomic, copy) NSString* name_;
@property(nonatomic, assign) id<Eat> somebd_;
-(id)initWithName:(NSString*)name;
-(void)eatFood:(NSString *)foodname;
@end
//带饭类
@interface I : NSObject<Eat>
-(void)introduceSelf;
@end

NS_ASSUME_NONNULL_END

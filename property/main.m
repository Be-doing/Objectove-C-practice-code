//
//  main.m
//  property
//
//  Created by didi on 2019/11/14.
//  Copyright © 2019 didi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Monster.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
      
        Monster* m1 = [[Monster alloc] init];
        m1.strings_ = @"哥尔赞";
        m1.stringp_ = @"美尔巴";

        [m1 Print];


        NSMutableString* str = [NSMutableString  stringWithFormat:@"伽库玛"];;

        m1.strings_ = str;
        m1.stringp_ = str;

        [m1 Print];

        [str appendString:@"基里埃洛德"];
        [m1 Print];
        
       // [str release];
    }
    return 0;
}

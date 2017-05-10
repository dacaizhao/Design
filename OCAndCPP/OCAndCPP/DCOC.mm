//
//  dacaiOC.m
//  zzzz
//
//  Created by point on 2017/3/23.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DCOC.h"

@interface DC :NSObject
- (void) sbSay;
@end

@implementation DC
- (void) sbSay {
    NSLog(@"sb say");
}
@end

void sayHelloOC()
{
    DC *sb = [DC new];
    [sb sbSay];
}

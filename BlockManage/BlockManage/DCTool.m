//
//  DCTool.m
//  BlockManage
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "DCTool.h"

@implementation DCTool
static DCTool *tool = nil;
+ (instancetype)tool {
    
    return [[self alloc]init];
}


+(instancetype)allocWithZone:(struct _NSZone *)zone
{
    //本身就是线程安全的
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        tool = [super allocWithZone:zone];
    });
    return tool;
}

//- (void)job:(void (^)())block {
//    if(block){
//        block();
//    }
//}

//- (void)job:(void (^)(NSString *))block {
//    if(block){
//        block(@"222");
//    }
//}
- (void)job:(globalBlock)block {
    if(block) {
        block(@"222");
    }
}


@end

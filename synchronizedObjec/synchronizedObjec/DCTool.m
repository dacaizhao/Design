//
//  DCTool.m
//  synchronizedObjec
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "DCTool.h"

static DCTool *tool = nil;
@implementation DCTool

+ (DCTool *)dcInstance {
    @synchronized(self){
        if(nil == tool) {
            tool = [[self alloc]init];
        }
        return tool;
    }
    return tool;
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

//2.提供类方法
+(instancetype)shareTool
{
    return [[self alloc]init];
}

//3.严谨
-(id)copyWithZone:(NSZone *)zone
{
    return tool;
}

-(id)mutableCopyWithZone:(NSZone *)zone
{
    return tool;
}

@end



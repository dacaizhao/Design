//
//  DCModel.m
//  ReflexDemo
//
//  Created by point on 2017/5/9.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "DCModel.h"

@implementation DCModel
+ (void)run:(NSString *)str {
    NSLog(@"我是类方法%@",str);
}

- (void)run:(NSString *)str {
    NSLog(@"我是对象方法%@",str);
}
@end

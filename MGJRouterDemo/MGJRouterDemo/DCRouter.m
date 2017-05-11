//
//  DCRouter.m
//  MGJRouterDemo
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "DCRouter.h"
#import "MGJRouter.h"
#import "DCJob.h"

@implementation DCRouter

+ (void)load {
    
    [MGJRouter registerURLPattern:@"dc://job" toObjectHandler:^id(NSDictionary *routerParameters) {
        return [[DCJob alloc]init];
    }];
    
    [MGJRouter registerURLPattern:@"dc://run" toHandler:^(NSDictionary *routerParameters) {
        NSLog(@"%@",routerParameters);
       
        
    }];

}


@end

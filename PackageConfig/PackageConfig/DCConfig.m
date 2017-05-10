//
//  DCConfig.m
//  PackageConfig
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "DCConfig.h"

@implementation DCConfig
+ (instancetype)defaultConfig {
    DCConfig *config = [[DCConfig alloc]init];
    config.name = @"赵大财";
    config.age =  1989;
    config.job = @"iOS架构师 逆向大神 音视频大神";
    return config;
}

- (DCConfig *(^)(NSString *))changeJob {
    return ^(NSString *changeJob) {
        self.job = changeJob;
        return self;
    };
}

-(DCConfig *(^)(NSString *))changeName {
    return ^(NSString * changeName){
         self.name = changeName;
        return self;
    };
}

@end

//
//  DCTool.m
//  PackageConfig
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "DCTool.h"


@interface DCTool ()

@end

@implementation DCTool

- (void)updateWithConfig:(void (^)(DCConfig *config))configBlock {
    if (configBlock) {
        configBlock(self.config);
    }
}

- (void)sayConfig {
    NSLog(@"姓名%@ - 年龄%lu - 工作%@",self.config.name,(unsigned long)self.config.age,self.config.job);
}

- (DCConfig *)config {
    if(!_config) {
        _config = [DCConfig defaultConfig];
    }
    return _config;
}
@end

//
//  DCTool.m
//  ChainDemo
//
//  Created by point on 2017/5/9.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "DCTool.h"

@implementation DCTool

- (DCTool *(^)(NSString *))age {
    return ^(NSString *age) {
        self.ageVaule = age;
        return self;
    };
}

- (DCTool *(^)(NSString *))name {
    return ^(NSString *name) {
        self.nameValue = name;
        return self;
    };
}

- (DCTool *(^)(NSString *))Job {
    return ^(NSString *job) {
        self.jobValue = job;
        return self;
    };
}
@end

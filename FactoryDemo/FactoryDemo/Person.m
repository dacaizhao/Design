//
//  Person.m
//  FactoryDemo
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (instancetype)person {
    return [[self alloc]init];
}

- (void)work {
    if (self.workBlock) {
        self.workBlock(self);
    }
}

@end

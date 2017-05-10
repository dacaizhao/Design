//
//  DCConfig.h
//  PackageConfig
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCConfig : NSObject

+ (instancetype)defaultConfig;

@property(nonatomic,assign) NSUInteger age;
@property(nonatomic,copy) NSString *name;
@property(nonatomic,copy) NSString *job;


-(DCConfig *(^)(NSString *))changeName;
-(DCConfig *(^)(NSString *))changeJob;
@end

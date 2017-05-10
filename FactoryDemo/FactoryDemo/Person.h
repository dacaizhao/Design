//
//  Person.h
//  FactoryDemo
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @protected
    NSString *_name;
    NSInteger _age;
}
@property(nonatomic,copy) NSString *name;
@property(nonatomic,assign) NSInteger age;
@property(nonatomic,strong) void (^workBlock)(Person * person);

+ (instancetype) person;

- (void)work;

@end

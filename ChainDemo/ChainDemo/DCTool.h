//
//  DCTool.h
//  ChainDemo
//
//  Created by point on 2017/5/9.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCTool : NSObject

@property(nonatomic,copy) NSString *ageVaule;
@property(nonatomic,copy) NSString *nameValue;

-(DCTool *(^)(NSString *))name;

-(DCTool *(^)(NSString *))age;

@end

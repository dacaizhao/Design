//
//  DCTool.h
//  PackageConfig
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DCConfig.h"

@interface DCTool : NSObject
@property (nonatomic, strong) DCConfig *config;

- (void)updateWithConfig: (void(^)(DCConfig *config))configBlock;

- (void)sayConfig;
@end

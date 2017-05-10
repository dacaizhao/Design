//
//  DCTool.h
//  BlockManage
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^globalBlock)(NSString *str);

@interface DCTool : NSObject



+ (instancetype)tool;

/*- (void)job:(void(^)(NSString *))block; */


- (void)job:(globalBlock)block;
@end

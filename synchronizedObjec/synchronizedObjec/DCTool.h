//
//  DCTool.h
//  synchronizedObjec
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCTool : NSObject<NSCopying, NSMutableCopying>

+(DCTool *)dcInstance;

+(instancetype)shareTool;

@end

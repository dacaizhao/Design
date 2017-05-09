//
//  BusinessProtocol.h
//  Testzz
//
//  Created by point on 2017/4/28.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^completionHandler)(NSUInteger idx);

@protocol BusinessProtocol <NSObject>

- (void)execute;

- (void)setCompletionHandler:(completionHandler)completionHandler;

@end

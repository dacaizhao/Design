//
//  OneBusinessProtocol.m
//  Testzz
//
//  Created by point on 2017/4/28.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "OneBusiness.h"
#import "BusinessProtocol.h"
@interface OneBusiness () <BusinessProtocol>

@property (nonatomic, strong) completionHandler completionHandler;

@end

@implementation OneBusiness

-(void)setCompletionHandler:(completionHandler)completionHandler {
    _completionHandler = completionHandler;
}

- (void)execute {
  
    self.completionHandler ? self.completionHandler(0):nil;
   
}
@end

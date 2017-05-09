//
//  ViewController.m
//  Business
//
//  Created by point on 2017/5/9.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "ViewController.h"
#import "OneBusiness.h"
#include "BusinessProtocol.h"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *businessSourceList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // __weak typeof(self) weakSelf = self;
    
    completionHandler completion = ^ (NSUInteger idx){
        NSLog(@"%lu",(unsigned long)idx);
    };
    [self.businessSourceList makeObjectsPerformSelector:@selector(setCompletionHandler:) withObject:completion];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    id <BusinessProtocol>business = self.businessSourceList[0];
    [business execute];
}

- (NSMutableArray *)businessSourceList
{
    if (_businessSourceList == nil) {
        _businessSourceList = [NSMutableArray new];
        [_businessSourceList addObject:[[OneBusiness alloc] init]];
        
    }
    return _businessSourceList;
}



@end

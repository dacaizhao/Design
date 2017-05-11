//
//  ViewController.m
//  MGJRouterDemo
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "ViewController.h"
#import "MGJRouter.h"
#import "DCJob.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DCJob *job = [MGJRouter objectForURL:@"dc://job"];
    [job run];
    
    [MGJRouter openURL:@"dc://run" withUserInfo:@{@"name":@"zhao"} completion:^(id result) {
        
    }];
}




@end

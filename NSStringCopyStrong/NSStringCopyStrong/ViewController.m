//
//  ViewController.m
//  NSStringCopyStrong
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "ViewController.h"
#import "DCModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DCModel * dc = [[DCModel alloc]init];
    dc.name = @"赵大财";
    dc.job = @"iOS架构师 逆向大神 流媒体大神";
    NSLog(@"%@ , %@",dc.name,dc.job);
    
    NSMutableString *str = [NSMutableString stringWithFormat:@"我来改变"];
    dc.name = str;
    dc.job = str;
    [str appendString:@"增加了数据"];
    
    NSLog(@"%@ , %@",dc.name,dc.job);
    
}





@end

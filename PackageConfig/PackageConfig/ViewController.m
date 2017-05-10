//
//  ViewController.m
//  PackageConfig
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "ViewController.h"
#import "DCTool.h"
#import "DCConfig.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DCTool * t1 = [[DCTool alloc]init];
    DCTool * t2 = [[DCTool alloc]init];
    DCTool * t3 = [[DCTool alloc]init];
    
    //这里配置未改
    [t1 updateWithConfig:^(DCConfig *config) {
    }];
    [t1 sayConfig];
    
    //这里配置已改
    [t2 updateWithConfig:^(DCConfig *config) {
        config.name =@"赵大财改";
        config.age = 1989;
        config.job = [NSString stringWithFormat:@"%@找工作",config.job];
    }];
    [t2 sayConfig];
    
    //这里链式修改配置
    [t3 updateWithConfig:^(DCConfig *config) {
        config.age = 1989;
        config.changeJob(@"奔跑吧 工作").changeName(@"赵大财神");
    }];
    [t3 sayConfig];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

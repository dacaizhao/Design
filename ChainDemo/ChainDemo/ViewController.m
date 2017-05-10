//
//  ViewController.m
//  ChainDemo
//
//  Created by point on 2017/5/9.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "ViewController.h"
#import "DCTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DCTool * tool = [[DCTool alloc]init];
    tool.nameValue = @"赵大财";
    tool.ageVaule = @"1989";
    tool.name(@"zhaodacai").age(@"1990").Job(@"iOS");
    NSLog(@"名字:%@ - 年龄%@ - 工作%@",tool.nameValue,tool.ageVaule,tool.jobValue);
}

@end

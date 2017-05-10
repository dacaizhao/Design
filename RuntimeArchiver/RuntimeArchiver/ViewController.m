//
//  ViewController.m
//  RuntimeArchiver
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "ViewController.h"
#import "DCTool.h"
#import <objc/message.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Ivar : runtime里面 Ivar 代表成员变量
    unsigned int count = 0;
    Ivar * ivars = class_copyIvarList([DCTool class], &count);
    for (int i= 0; i<count; i++) {
        Ivar ivar = ivars[i];
        const char * name = ivar_getName(ivar);
        NSLog(@"%s",name);
    }
    free(ivars);
    
    DCTool * tool = [[DCTool alloc]init];
    tool.name = @"赵大财";
    tool.age = 1989;
    tool.job = @"iOS开发";
    //沙盒
    NSString * temp = NSTemporaryDirectory();
    NSString * filePath = [temp stringByAppendingPathComponent:@"dacai.job"];
    
    //归档
    [NSKeyedArchiver archiveRootObject:tool toFile:filePath];
    
    //解档
    DCTool * t =  [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    
    
    NSLog(@"姓名%@ - 年龄%d - 工作%@",t.name,t.age,t.job);
}





@end

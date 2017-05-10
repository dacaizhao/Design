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
    //就是strong 指向可变字符串 字符串改变会跟着改变 copy修饰的则不会
    
    
    
    
    NSString *string = @"汉斯哈哈哈";
    // 没有产生新对象
    NSString *copyString = [string copy];
    // 产生新对象
    NSMutableString *mutableCopyString = [string mutableCopy];
    
    [mutableCopyString appendString:@"eeeee"];
    
    NSLog(@"string = %@ copyString = %@ mutableCopyString = %@", string, copyString, mutableCopyString);
    
    
    
    //意义何在 什么浅拷贝是指针拷贝 深拷贝是内容拷贝  呸 恶心
    //关键是什么 就是可不可以改变的问题 这才是目的  可变数组 深拷贝 但是字符串是不可变的  依然不能对数组造成音响
    
    
    // 不可变的 copy 都是浅拷贝
    // 可变的   copy 都是深拷贝
    // 不可变的 Mutable 都是深拷贝
    // 可变的   Mutable 都是深拷贝
    NSMutableArray * dataArray1=[NSMutableArray arrayWithObjects:
                                 [NSMutableString stringWithString:@"one"],
                                 [NSMutableString stringWithString:@"two"],
                                 [NSMutableString stringWithString:@"three"],
                                 [NSMutableString stringWithString:@"four"],
                                 nil
                                 ];
    
    NSMutableArray * dataArray2;
    NSMutableString * mStr;
    
    dataArray2=[dataArray1 mutableCopy];
    mStr = dataArray1[0];
    [mStr appendString:@"--ONE"];
    NSLog(@"dataArray1：%@",dataArray1);
    NSLog(@"dataArray2：%@",dataArray2);
    
    
    //============================
    NSArray * arr1=[NSArray arrayWithObjects:
                    [NSMutableString stringWithString:@"one"],
                    [NSMutableString stringWithString:@"two"],
                    [NSMutableString stringWithString:@"three"],
                    [NSMutableString stringWithString:@"four"],
                    nil
                    ];
    
    NSArray * arr2 = [arr1 copy];
    mStr = arr1[0];
    [mStr appendString:@"--ONE"];
    NSLog(@"dataArray1：%@",arr2);
    NSLog(@"dataArray2：%@",arr1);
    
    
    NSArray *newArr1 = @[@"1",@"2",@"3"];
    NSMutableArray *newArr2 = [newArr1 mutableCopy];
    [newArr2 removeLastObject];
    NSLog(@"dataArray1：%@",newArr1);
    NSLog(@"dataArray2：%@",newArr2);
    
    
    NSMutableArray *newArr3 = [NSMutableArray arrayWithArray:newArr1];
    NSMutableArray *newArr4 = [newArr3 mutableCopy];
    
    mStr = [NSMutableString stringWithFormat:@"%@", newArr3[0]];
    [mStr appendString:@"--ONE"];
    NSLog(@"%@",mStr);
    newArr3[0] = @"one";
    NSLog(@"dataArray1：%@",newArr3);
    NSLog(@"dataArray2：%@",newArr4);
}





@end

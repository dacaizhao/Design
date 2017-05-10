//
//  ViewController.m
//  NSThreadSynchronized
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
/** 售票员A */
@property (nonatomic, strong) NSThread *threadA;
/** 售票员B */
@property (nonatomic, strong) NSThread *threadB;
/** 售票员C */
@property (nonatomic, strong) NSThread *threadC;

@property (nonatomic, assign) NSInteger totalCount;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    //设置中票数
    self.totalCount = 1000;
    
    //    self.threadA = [[NSThread alloc]initWithTarget:self selector:@selector(saleTicket) object:nil];
    //    self.threadB = [[NSThread alloc]initWithTarget:self selector:@selector(saleTicket) object:nil];
    //    self.threadC = [[NSThread alloc]initWithTarget:self selector:@selector(saleTicket) object:nil];
    
    self.threadA.name = @"售票员A";
    self.threadB.name = @"售票员B";
    self.threadC.name = @"售票员C";
    
    
    self.threadA = [[NSThread alloc]initWithTarget:self selector:@selector(unsaleTicket) object:nil];
    self.threadB = [[NSThread alloc]initWithTarget:self selector:@selector(unsaleTicket) object:nil];
    self.threadC = [[NSThread alloc]initWithTarget:self selector:@selector(unsaleTicket) object:nil];
    [self.threadA start];
    [self.threadB start];
    [self.threadC start];
    
    
    /*
     //启动线程
     @synchronized(self) {
     [self.threadA start];
     [self.threadB start];
     [self.threadC start];
     }
     */
    
}


-(void)unsaleTicket
{
    while (1) {
        
        NSInteger count = self.totalCount;
        if (count >0) {
            self.totalCount = count - 1;
            NSLog(@" %zd ",self.totalCount);
        }else
        {
            
            break;
        }
    }
    
}


//-(void)saleTicket
//{
//    while (1) {
//        @synchronized(self) {
//            NSInteger count = self.totalCount;
//            if (count >0) {
//                self.totalCount = count - 1;
//                NSLog(@"剩下- %zd -张票",self.totalCount);
//            }else
//            {
//                NSLog(@"不要回公司上班了");
//                break;
//            }
//        }
//    }
//}


@end

//
//  ViewController.m
//  ReflexDemo
//
//  Created by point on 2017/5/9.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "ViewController.h"
#import "DCModel.h"
#import <objc/message.h>

static SEL         _dcClassSel;
static SEL         _dcObjectSel;

@interface ViewController ()
{
    Class       _dcModelClass;
}
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dcModelClass = NSClassFromString(@"DCModel");
    _dcClassSel = NSSelectorFromString(@"run:");
    static void(*action2)(id, SEL , NSString*) = (void(*)(id, SEL,NSString*))objc_msgSend;
    action2(_dcModelClass, _dcClassSel ,@"100米"); //这个执行的是类方法
    
    id controller = [[_dcModelClass alloc] init];
    static void(*action3)(id, SEL , NSString*) = (void(*)(id, SEL,NSString*))objc_msgSend;
    action3(controller, _dcClassSel ,@"100米"); //这个执行的是对象方法
    
    //动态的添加方法 方法在当前控制器中 类方法执行
    _dcModelClass = NSClassFromString(@"DCModel");
    _dcObjectSel = NSSelectorFromString(@"runing:");
    class_addMethod(_dcModelClass, _dcObjectSel, (IMP)runing, "v@:@");
    static void(*action)(id, SEL,NSNumber *) = (void(*)(id, SEL,NSNumber *))objc_msgSend;
    id controller2 = [[_dcModelClass alloc] init]; //这样执行对象方法
    action(controller2, _dcObjectSel,@(100));
    
    
}

void runing(id self, SEL _cmd, NSNumber *meter) {
    NSLog(@"我的方法不在DCmodel中跑了%@", meter);
}

@end

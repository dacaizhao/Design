//
//  ViewController.m
//  FactoryDemo
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "ViewController.h"
#import "IOSer.h"
#import "PHPer.h"
#import "Person.h"
#import "PersonFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //FactoryDemo 应用场景是什么
    //程序运行时才确定改创建那个类的子类对象  将子类的创建方法进行封装
    //子类对象的创建时机 就是工厂类干的
    
    PHPer *php = [PHPer person];
    [php setWorkBlock:^(Person *person){
        PHPer *php = (PHPer *)person;
        [php job:@"去开发php"];
    }];
    [php work];
    
    
    IOSer *ios = [IOSer person];
    [ios setWorkBlock:^(Person *person){
        IOSer *ios = (IOSer *)person;
        [ios job:@"去开发ios"];
    }];
    [ios work];
    
    
    Person *phper = [PersonFactory personWithTask:@"php"];
    [phper work];
    
    Person *ioser = [PersonFactory personWithTask:@"ios"];
    [ioser work];
    
    
}





@end

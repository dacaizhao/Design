//
//  ViewController.m
//  Hook
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//


#import "ViewController.h"



struct Hook
{
    Hook ()
    {
        NSLog(@"%s",__func__);
    }
};
const Hook _hook;

@interface ViewController ()

@end


@implementation ViewController

- (void)loadView {
    NSLog(@"%s",__func__);
}

+ (void)load {
    NSLog(@"%s",__func__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

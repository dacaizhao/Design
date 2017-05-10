//
//  ViewController.m
//  BlockManage
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "ViewController.h"
#import "DCViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)jump:(id)sender {
    DCViewController * vc = [DCViewController new];
    [self presentViewController:vc animated:true completion:nil];
}




@end

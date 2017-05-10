//
//  ViewController.m
//  Semaphore
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) dispatch_semaphore_t sem;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.sem = dispatch_semaphore_create(0);
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        dispatch_semaphore_wait(_sem, DISPATCH_TIME_FOREVER);
        [self daCai];
        dispatch_async(dispatch_get_main_queue(), ^{
        });
    });
    
    
    
}
- (IBAction)run:(UIButton *)sender {
    dispatch_semaphore_signal(_sem);
}



- (void)daCai {
    NSLog(@"赵大财");
}

@end

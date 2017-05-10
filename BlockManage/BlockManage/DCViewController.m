//
//  DCViewController.m
//  BlockManage
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "DCViewController.h"
#import "DCTool.h"

static void(^globalzBlock)();

@interface DCViewController ()
@property(nonatomic,strong) NSString *name;
@property(nonatomic,strong) void(^block)(); //copy相对消耗 一点性能
//copy:非ARC阶段  因为mrc 没有strongga
//strong: ARC阶段
@end

@implementation DCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     void(^block)() = ^(){
     self.name = @"ddd";    //这里block 对self 进行了引用
     
     };
     _block = block; //这里 self 对block 进行了引用 所以就会造成循环引用
     */
    
    /*
     __weak typeof (self) weakSelf = self;
     _block =  ^(){
     weakSelf.name = @"ddd";    //这样不会
     };
     */
    
    /*
     _block =  ^(){
     _name = @"ddd";    //这样也是 循环引用
     };
     */
    
    /////////////////////  不会造成循环引用
    /*
     [self test:^{
     self.name = @"ddd";
     }];
     */
    
    /*
     void(^block)() = ^(){
     self.name = @"ddd";    //这里block 对self 进行了引用
     
     };
     globalBlock = block;      //全局对block
     */
    
    DCTool *tool = [DCTool tool];
    DCTool *tool2 = [DCTool tool];
    
    NSLog(@"%p %p",tool,tool2);
    //    [tool job:^{
    //        self.name = @"赵大财";
    //        NSLog(@"ssss");
    //    }];
    
    [tool job:^(NSString * name) {
        self.name = name;
    }];
    
    __weak typeof (self) weakSelf = self;
    [tool2 job:^(NSString * name) {
        __strong typeof(weakSelf) strongSelf = weakSelf; //防止释放后调用对象
        strongSelf.name = name;
    }];
    
}


- (void)test:(void(^)())block {
    
}

- (IBAction)out:(UIButton *)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)dealloc {
    NSLog(@"释放");
}


@end

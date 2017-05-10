//
//  ViewController.m
//  SemaphoreTaskLock
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSTimer * atimer;//声音定时器 模拟异步一直调用方法
@property (nonatomic, strong) NSTimer * vtimer;//视频定时器 模拟异步一直调用方法
@property (nonatomic, strong) dispatch_semaphore_t asemaphore; //声音信号
@property (nonatomic, strong) dispatch_semaphore_t vsemaphore; //视频信号量
@property (nonatomic) dispatch_queue_t writerVideoQueue; //写入视频
@property (nonatomic) dispatch_queue_t writeAudioQueue; //写入音频

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.asemaphore =  dispatch_semaphore_create(1);
    self.vsemaphore =  dispatch_semaphore_create(1);
    self.atimer =[NSTimer timerWithTimeInterval:0.01 target:self selector:@selector(aupdateTimer) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.atimer forMode:NSRunLoopCommonModes];
    
    self.vtimer =[NSTimer timerWithTimeInterval:0.04 target:self selector:@selector(vupdateTimer) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.vtimer forMode:NSRunLoopCommonModes];
}

- (void) addAudioBuffer
{
    for (int i = 0; i < 150; i++) {
        NSLog(@"声音%d",i);
    }
    
}

- (void) addVideoBuffer
{
    for (int i = 0; i < 100; i++) {
        NSLog(@"视频%d",i);
    }
}

- (void) addAudio {
    dispatch_semaphore_wait(self.asemaphore, DISPATCH_TIME_FOREVER);
    [self addAudioBuffer];
    dispatch_semaphore_signal(self.asemaphore);
}

- (void) addVedio {
    dispatch_semaphore_wait(self.vsemaphore, DISPATCH_TIME_FOREVER);
    [self addVideoBuffer];
    dispatch_semaphore_signal(self.vsemaphore);
}

- (void) aupdateTimer{
    self.writeAudioQueue = dispatch_queue_create("WriteAudioQueue", DISPATCH_QUEUE_SERIAL);
    dispatch_async( self.writeAudioQueue, ^(){
        [self addAudio];
    });
}
- (void) vupdateTimer{
    //dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    self.writerVideoQueue = dispatch_queue_create("writerVideoQueue", DISPATCH_QUEUE_SERIAL);
    dispatch_async(self.writerVideoQueue, ^(){
        [self addVedio];
    });
}

- (IBAction)stop:(UIButton *)sender {
    dispatch_semaphore_wait(self.asemaphore, DISPATCH_TIME_FOREVER);
    dispatch_semaphore_wait(self.vsemaphore, DISPATCH_TIME_FOREVER);
    [self stopContinue];
}

- (void)stopContinue
{
    for (int i = 0; i < 5; i++) {
        NSLog(@"========%d",i);
    }
    
}


@end

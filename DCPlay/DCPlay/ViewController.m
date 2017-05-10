//
//  ViewController.m
//  DCPlay
//
//  Created by point on 2017/5/8.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "ViewController.h"
#import "DCCamera.h"
#import "DCOpenGLView.h"


@interface ViewController ()

@property (nonatomic, strong) DCCamera *camera;
@property (nonatomic, weak) DCOpenGLView *openGLView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self openGLView];
    DCCamera *camera = [DCCamera cameraWithSessionPreset:AVCaptureSessionPreset1280x720 postion:AVCaptureDevicePositionFront];
    camera.videoOrientation = AVCaptureVideoOrientationPortraitUpsideDown;
    _camera = camera;
    
    __weak typeof(self) weakSelf = self;
    
    camera.captureVideoSampleBufferBlcok = ^(CMSampleBufferRef sampleBuffer){
        [weakSelf processSampleBuffer:sampleBuffer];
    };
    
    // 开始捕获数据
    [camera startCapture];
}


- (void)processSampleBuffer:(CMSampleBufferRef)sampleBuffer
{
    [self.openGLView displayWithSampleBuffer:sampleBuffer];
}

- (DCOpenGLView *)openGLView
{
    if (_openGLView == nil) {
        DCOpenGLView *openGLView = [[DCOpenGLView alloc] initWithFrame:self.view.bounds];
        _openGLView = openGLView;
        [self.view addSubview:openGLView];
    }
    return _openGLView;
}


@end

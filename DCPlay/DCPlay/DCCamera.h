//
//  DCCamera.h
//  DCPlay
//
//  Created by point on 2017/5/8.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface DCCamera : NSObject
@property (nonatomic, assign) int frameRaw;

@property (nonatomic, assign) BOOL isVideoDataRGB;

@property (nonatomic, assign) AVCaptureVideoOrientation videoOrientation;

@property (nonatomic, assign) BOOL videoMirrored;

@property (nonatomic, assign) BOOL isCaputureAudioData;

@property (nonatomic, strong) void(^captureVideoSampleBufferBlcok)(CMSampleBufferRef sampleBuffer);

- (void)startCapture;


+ (instancetype)cameraWithSessionPreset:(NSString *)sessionPreset postion:(AVCaptureDevicePosition)postion;

@end

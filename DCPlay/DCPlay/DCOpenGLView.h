//
//  DCOpenGLView.h
//  DCPlay
//
//  Created by point on 2017/5/8.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface DCOpenGLView : UIView

- (void)displayWithSampleBuffer:(CMSampleBufferRef)sampleBuffer;

@end

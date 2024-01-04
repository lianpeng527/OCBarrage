//
//  CALayer+OCBarrage.m
//  OCBarrage
//
//  Created by QMTV on 2017/8/29.
//  Copyright © 2017年 LFC. All rights reserved.
//

#import "CALayer+OCBarrage.h"

@implementation CALayer (OCBarrage)

- (UIImage *)convertContentToImageWithSize:(CGSize)contentSize {
//    UIGraphicsBeginImageContextWithOptions(contentSize, 0.0, [UIScreen mainScreen].scale);
//    //self为需要截屏的UI控件 即通过改变此参数可以截取特定的UI控件
//    [self renderInContext:UIGraphicsGetCurrentContext()];
//    UIImage *image= UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    
//    return image;
    UIGraphicsImageRendererFormat *format = [[UIGraphicsImageRendererFormat alloc] init];
     format.opaque = NO;
     format.scale = [UIScreen mainScreen].scale;
     UIGraphicsImageRenderer *render = [[UIGraphicsImageRenderer alloc] initWithSize:contentSize format:format];
     UIImage *image = [render imageWithActions:^(UIGraphicsImageRendererContext * _Nonnull rendererContext) {
         CGRect rect = CGRectMake(0, 0, contentSize.width, contentSize.height);
         UIRectFill(rect);
     }];

     return image;
}

@end

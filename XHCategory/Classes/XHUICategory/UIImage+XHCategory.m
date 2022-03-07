//
//  UIImage+XHCategory.m
//  XHCategory
//
//  Created by stone win on 2022/3/7.
//

#import "UIImage+XHCategory.h"

@implementation UIImage (XHCategory)

// MARK: copied from internet
+ (UIImage *)fitImageToMaxWidth:(CGFloat)maxwidth image:(UIImage *)originalImage
{
    if (originalImage.size.width <= maxwidth) {
        return originalImage;
    }
    
    CGFloat targetHeight = originalImage.size.height * (maxwidth * 1.0 / originalImage.size.width);
    
    CGSize targetSize = CGSizeMake(maxwidth, targetHeight);
    
    UIGraphicsBeginImageContext(targetSize);
    CGRect imageRect = CGRectMake(0.0, 0.0, targetSize.width, targetSize.height);
    [originalImage drawInRect:imageRect];
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resultImage;
}

+ (UIImage*)imageWithFixedOrientation:(UIImage *)aImage fitToMaxWidth: (CGFloat)maxWidth {
    if (aImage==nil || !aImage) {
        return nil;
    }
    // No-op if the orientation is already correct
    if (aImage.imageOrientation == UIImageOrientationUp) {
        return [self fitImageToMaxWidth:maxWidth image:aImage];
    }
    
    // We need to calculate the proper transformation to make the image upright.
    // We do it in 2 steps: Rotate if Left/Right/Down, and then flip if Mirrored.

    CGSize imageSize = aImage.size;
    CGSize newSize = aImage.size;
    // Now we draw the underlying CGImage into a new context, applying the transform
    // calculated above.

    switch (aImage.imageOrientation) {
        case UIImageOrientationLeft:
        case UIImageOrientationLeftMirrored:
        case UIImageOrientationRight:
        case UIImageOrientationRightMirrored:
            newSize = CGSizeMake(aImage.size.height,aImage.size.width);
            break;
        default:
            break;
    }
    
    if (newSize.width > maxWidth) {
        CGFloat ratio = maxWidth / newSize.width;
        newSize.height *= ratio;
        newSize.width = maxWidth;
        
        imageSize.width *= ratio;
        imageSize.height *= ratio;
    }
    CGAffineTransform transform = CGAffineTransformIdentity;
    UIImageOrientation orientation=aImage.imageOrientation;
    NSInteger orientation_=orientation;
    switch (orientation_) {
        case UIImageOrientationDown:
        case UIImageOrientationDownMirrored:
            transform = CGAffineTransformTranslate(transform, imageSize.width, imageSize.height);
            transform = CGAffineTransformRotate(transform, M_PI);
            break;
            
        case UIImageOrientationLeft:
        case UIImageOrientationLeftMirrored:
            transform = CGAffineTransformTranslate(transform, imageSize.width, 0);
            transform = CGAffineTransformRotate(transform, M_PI_2);
            break;
        case UIImageOrientationRight:
        case UIImageOrientationRightMirrored:
            transform = CGAffineTransformTranslate(transform, 0, imageSize.height);
            transform = CGAffineTransformRotate(transform, -M_PI_2);
            break;
    }
    
    switch (orientation_) {
        case UIImageOrientationUpMirrored:{
            
        }
        case UIImageOrientationDownMirrored:
            transform = CGAffineTransformTranslate(transform, imageSize.width, 0);
            transform = CGAffineTransformScale(transform, -1, 1);
            break;
            
        case UIImageOrientationLeftMirrored:
        case UIImageOrientationRightMirrored:
            transform = CGAffineTransformTranslate(transform, imageSize.height, 0);
            transform = CGAffineTransformScale(transform, -1, 1);
            break;
    }
    
    CGContextRef ctx = CGBitmapContextCreate(NULL,
                                             imageSize.width,
                                             imageSize.height,
                                             CGImageGetBitsPerComponent(aImage.CGImage),
                                             0,
                                             CGImageGetColorSpace(aImage.CGImage),
                                             CGImageGetBitmapInfo(aImage.CGImage));
    CGContextConcatCTM(ctx, transform);
    CGContextDrawImage(ctx, CGRectMake(0,0,newSize.width,newSize.height), aImage.CGImage);
    
    // And now we just create a new UIImage from the drawing context
    CGImageRef cgimg = CGBitmapContextCreateImage(ctx);
    UIImage *img = [UIImage imageWithCGImage:cgimg];
    CGContextRelease(ctx);
    CGImageRelease(cgimg);
    return img;
}

- (instancetype)fixedWidthImage {
    return [[self class] imageWithFixedOrientation:self fitToMaxWidth:1280];
}

@end

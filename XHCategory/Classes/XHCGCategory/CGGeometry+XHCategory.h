//
//  CGGeometry+XHCategory.h
//  XHCategory
//
//  Created by stone win on 2022/3/3.
//

#import <CoreGraphics/CoreGraphics.h>

CGRect CGRectInsets(CGRect rect, CGFloat top, CGFloat left, CGFloat bottom, CGFloat right);
/// 垂直居中
/// @param rect 需要剧中的 rect
/// @param inRect 容器 rect
CGRect CGRectVerticalCentral(CGRect rect, CGRect inRect);
/// 水平居中
/// @param rect 需要剧中的 rect
/// @param inRect 容器 rect
CGRect CGRectHorizontalCentral(CGRect rect, CGRect inRect);
/// 居右对齐
CGRect CGRectMoveRight(CGRect rect, CGRect inRect);
/// 居下对齐
CGRect CGRectMoveBottom(CGRect rect, CGRect inRect);

//
//  CGGeometry+XHCategory.m
//  XHCategory
//
//  Created by stone win on 2022/3/3.
//

#import "CGGeometry+XHCategory.h"

CGRect CGRectInsets(CGRect rect, CGFloat top, CGFloat left, CGFloat bottom, CGFloat right) {
    rect.origin.x += left;
    rect.size.width -= left + right;
    rect.origin.y += top;
    rect.size.height -= top + bottom;
    return rect;
}

CGRect CGRectVerticalCentral(CGRect rect, CGRect inRect) {
    rect.origin.y = CGRectGetMidY(inRect) - (rect.size.height / 2);
    return rect;
}

CGRect CGRectHorizontalCentral(CGRect rect, CGRect inRect) {
    rect.origin.x = CGRectGetMidX(inRect) - (rect.size.width / 2);
    return rect;
}

CGRect CGRectMoveRight(CGRect rect, CGRect inRect) {
    rect.origin.x = CGRectGetMaxX(inRect) - rect.size.width;
    return rect;
}

CGRect CGRectMoveBottom(CGRect rect, CGRect inRect) {
    rect.origin.y = CGRectGetMaxY(inRect) - rect.size.height;
    return rect;
}

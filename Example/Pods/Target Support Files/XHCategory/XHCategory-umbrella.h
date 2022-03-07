#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "XHCategory.h"
#import "CGGeometry+XHCategory.h"
#import "XHCGCategory.h"
#import "NSAttributedString+XHCategory.h"
#import "NSDictionary+XHCategory.h"
#import "NSMutableArray+XHCategory.h"
#import "XHNSCategory.h"
#import "UIApplication+XHCategory.h"
#import "UIImage+XHCategory.h"
#import "UIViewController+XHCategory.h"
#import "XHUICategory.h"

FOUNDATION_EXPORT double XHCategoryVersionNumber;
FOUNDATION_EXPORT const unsigned char XHCategoryVersionString[];


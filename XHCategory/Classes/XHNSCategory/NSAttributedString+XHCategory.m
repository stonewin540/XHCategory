//
//  NSAttributedString+XHCategory.m
//  XHCategory
//
//  Created by stone win on 2022/3/1.
//

#import "NSAttributedString+XHCategory.h"
#import <UIKit/UIKit.h>

@implementation NSAttributedString (XHCategory)

+ (instancetype)attributedStringWithString:(NSString *)string
                           foregroundColor:(UIColor *)foregroundColor
                                      font:(UIFont *)font {
    NSMutableDictionary *attrs = [NSMutableDictionary new];
    if ([foregroundColor isKindOfClass:[UIColor class]]) {
        attrs[NSForegroundColorAttributeName] = foregroundColor;
    }
    if ([font isKindOfClass:[UIFont class]]) {
        attrs[NSFontAttributeName] = font;
    }
    
    if (![string isKindOfClass:[NSString class]]) {
        string = @"";
    }
    return [[NSAttributedString alloc] initWithString:string
                                           attributes:attrs];
}
+ (instancetype)attributedStringWithString:(NSString *)string foregroundColor:(UIColor *)foregroundColor {
    return [self attributedStringWithString:string foregroundColor:foregroundColor font:nil];
}
+ (instancetype)attributedStringWithString:(NSString *)string font:(UIFont *)font {
    return [self attributedStringWithString:string foregroundColor:nil font:font];
}
+ (instancetype)attributedStringWithString:(NSString *)string {
    return [self attributedStringWithString:string foregroundColor:nil font:nil];
}

@end

//
//  NSAttributedString+XHCategory.h
//  XHCategory
//
//  Created by stone win on 2022/3/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class UIColor;
@class UIFont;

@interface NSAttributedString (XHCategory)

+ (instancetype)attributedStringWithString:(NSString * _Nullable)string
                           foregroundColor:(UIColor * _Nullable)foregroundColor
                                      font:(UIFont * _Nullable)font;
+ (instancetype)attributedStringWithString:(NSString * _Nullable)string
                           foregroundColor:(UIColor * _Nullable)foregroundColor;
+ (instancetype)attributedStringWithString:(NSString * _Nullable)string
                                      font:(UIFont * _Nullable)font;
+ (instancetype)attributedStringWithString:(NSString * _Nullable)string;

@end

NS_ASSUME_NONNULL_END

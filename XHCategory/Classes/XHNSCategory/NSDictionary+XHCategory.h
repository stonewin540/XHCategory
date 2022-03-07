//
//  NSDictionary+XHCategory.h
//  XHCategory
//
//  Created by stone win on 2022/3/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (XHCategory)

- (nullable NSString *)stringObjectForKey:(NSString *)key;

- (nullable instancetype)dictionaryOrNilForKey:(NSString *)key;

- (nullable instancetype)arrayOrNilForKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END

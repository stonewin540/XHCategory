//
//  NSDictionary+XHCategory.m
//  XHCategory
//
//  Created by stone win on 2022/3/3.
//

#import "NSDictionary+XHCategory.h"

@implementation NSDictionary (XHCategory)

- (NSString *)stringObjectForKey:(NSString *)key {
    if (![key isKindOfClass:[NSString class]]) {
        return nil;
    }
    
    NSDictionary *dictionary = self;
    id obj = dictionary[key];
    if (![obj isKindOfClass:[NSString class]]) {
        return nil;
    }
    
    return obj;
}

- (instancetype)dictionaryOrNilForKey:(NSString *)key {
    if (![key isKindOfClass:[NSString class]]) {
        return nil;
    }
    
    NSDictionary *dictionary = self;
    id obj = dictionary[key];
    if (![obj isKindOfClass:[NSDictionary class]]) {
        return nil;
    }
    
    return obj;
}

- (instancetype)arrayOrNilForKey:(NSString *)key {
    if (![key isKindOfClass:[NSString class]]) {
        return nil;
    }
    
    NSDictionary *dictionary = self;
    id obj = dictionary[key];
    if (![obj isKindOfClass:[NSArray class]]) {
        return nil;
    }
    
    return obj;
}

@end

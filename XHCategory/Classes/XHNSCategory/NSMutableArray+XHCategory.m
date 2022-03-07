//
//  NSMutableArray+XHCategory.m
//  NSExtensions
//
//  Created by stone win on 2022/1/19.
//

#import "NSMutableArray+XHCategory.h"

@implementation NSMutableArray (XHCategory)

- (BOOL)isEmpty {
    return (self.count == 0);
}


// MARK: single ended queue
static const NSInteger kFrontIndex = 0;

- (void)enqueue:(id)obj {
    [self addObject:obj];
}

- (id)dequeue {
    id obj = [self objectAtIndex:kFrontIndex];
    [self removeObjectAtIndex:kFrontIndex];
    return obj;
}

- (id)front {
    return [self firstObject];
}


// MARK: double ended queue

- (void)enqueueFront:(id)obj {
    [self insertObject:obj atIndex:kFrontIndex];
}

- (id)dequeueRear {
    id obj = [self lastObject];
    [self removeLastObject];
    return obj;
}

- (id)rear {
    return [self lastObject];
}


// MARK: stack

- (void)push:(id)obj {
    [self enqueue:obj];
}

- (id)pop {
    return [self dequeueRear];
}

- (id)top {
    return [self rear];
}

@end

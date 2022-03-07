//
//  NSMutableArray+XHCategory.h
//  NSExtensions
//
//  Created by stone win on 2022/1/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableArray<ObjectType> (XHCategory)

- (BOOL)isEmpty;

// MARK: single ended queue

/// 队尾入队
- (void)enqueue:(ObjectType)obj;
/// 队首出队
- (ObjectType)dequeue;
/// 队首元素
- (ObjectType)front;


// MARK: double ended queue

/// 队首入队
- (void)enqueueFront:(ObjectType)obj;
/// 队尾出队
- (ObjectType)dequeueRear;
/// 队尾元素
- (ObjectType)rear;


// MARK: stack

/// 入栈
- (void)push:(ObjectType)obj;
/// 出栈
- (ObjectType)pop;
/// 栈顶元素
- (ObjectType)top;

@end

NS_ASSUME_NONNULL_END

//
//  UIViewController+XHCategory.h
//  XHCategory
//
//  Created by stone win on 2022/2/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (XHCategory)

/// 动态计算排除导航栏高度的 controller 可见区域 rect
- (CGRect)visibleRect;

- (void)customNaviLeftBarButtonItemWithImage:(nullable UIImage *)image
                                    selector:(SEL)selector
                                   tintColor:(nullable UIColor *)tintColor;


- (void)customNaviRightBarButtonItemWithTitle:(nullable NSString *)title
                                     selector:(SEL)selector
                                    tintColor:(nullable UIColor *)tintColor;


- (void)presentFullScreenNavigationRootViewController:(UIViewController *)viewControllerToPresent
                                                 animated:(BOOL)flag
                                               completion:(void (^_Nullable)(void))completion;


/// 隐藏下方分割线
- (void)setNavigationBarShadowHidden:(BOOL)hidden;
/// 背景色与 controller 一致
- (void)setNavigationBarBackgroundClear:(BOOL)clear;


- (void)addKeyboardWillShowObserver:(SEL)selector;
- (void)removeKeyboardWillShowObserver;

- (void)addKeyboardDidShowObserver:(SEL)selector;
- (void)removeKeyboardDidShowObserver;

- (void)addKeyboardWillHideObserver:(SEL)selector;
- (void)removeKeyboardWillHideObserver;

- (void)addKeyboardDidHideObserver:(SEL)selector;
- (void)removeKeyboardDidHideObserver;

@end

NS_ASSUME_NONNULL_END

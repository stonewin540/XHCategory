//
//  UIViewController+XHCategory.m
//  XHCategory
//
//  Created by stone win on 2022/2/27.
//

#import "UIViewController+XHCategory.h"

@implementation UIViewController (XHCategory)

- (CGRect)visibleRect {
    CGRect visibleRect = self.view.bounds;
    
    UINavigationBar *navigationBar = self.navigationController.navigationBar;
    if (!navigationBar.isHidden) {
        CGRect bounds = self.view.bounds;
        CGRect converted =
        [self.view convertRect:navigationBar.frame fromView:navigationBar.superview];
        
        CGRect slice, remainder;
        CGRectDivide(bounds,
                     &slice,
                     &remainder,
                     CGRectGetMaxY(converted) - CGRectGetMinY(bounds),
                     CGRectMinYEdge);
        
        visibleRect = remainder;
    }
    
    return visibleRect;
}

- (void)customNaviLeftBarButtonItemWithImage:(nullable UIImage *)image
                                    selector:(SEL)selector
                                   tintColor:(nullable UIColor *)tintColor {
    self.navigationItem.leftBarButtonItem = ({
        UIBarButtonItem *item =
        [[UIBarButtonItem alloc] initWithImage:image
                                         style:UIBarButtonItemStylePlain
                                        target:self action:selector];
        item.tintColor = tintColor;
        item;
    });
}


- (void)customNaviRightBarButtonItemWithTitle:(nullable NSString *)title
                                     selector:(SEL)selector
                                    tintColor:(nullable UIColor *)tintColor {
    self.navigationItem.rightBarButtonItem = ({
        UIBarButtonItem *item =
        [[UIBarButtonItem alloc] initWithTitle:title
                                         style:UIBarButtonItemStylePlain
                                        target:self
                                        action:selector];
        item.tintColor = tintColor;
        item;
    });
}



- (void)setNavigationBarShadowHidden:(BOOL)hidden {
    self.navigationController.navigationBar.shadowImage = hidden ? [UIImage new] : nil;
}
- (void)setNavigationBarBackgroundClear:(BOOL)clear {
    [self.navigationController.navigationBar setBackgroundImage:clear ? [UIImage new] : nil
                                                  forBarMetrics:UIBarMetricsDefault];
}


- (void)presentFullScreenNavigationRootViewController:(UIViewController *)viewControllerToPresent
                                                 animated:(BOOL)flag
                                               completion:(void (^)(void))completion {
    UINavigationController *navigationController =
    [[UINavigationController alloc] initWithRootViewController:viewControllerToPresent];
    navigationController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:navigationController animated:flag completion:completion];
}


- (void)addKeyboardWillShowObserver:(SEL)selector {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:selector
                                                 name:UIKeyboardWillShowNotification
                                               object:nil];
}
- (void)removeKeyboardWillShowObserver {
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIKeyboardWillShowNotification
                                                  object:nil];
}

- (void)addKeyboardDidShowObserver:(SEL)selector {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:selector
                                                 name:UIKeyboardDidShowNotification
                                               object:nil];
}
- (void)removeKeyboardDidShowObserver {
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIKeyboardDidShowNotification
                                                  object:nil];
}

- (void)addKeyboardWillHideObserver:(SEL)selector {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:selector
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
}
- (void)removeKeyboardWillHideObserver {
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIKeyboardWillHideNotification
                                                  object:nil];
}

- (void)addKeyboardDidHideObserver:(SEL)selector {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:selector
                                                 name:UIKeyboardDidHideNotification
                                               object:nil];
}
- (void)removeKeyboardDidHideObserver {
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIKeyboardDidHideNotification
                                                  object:nil];
}

@end

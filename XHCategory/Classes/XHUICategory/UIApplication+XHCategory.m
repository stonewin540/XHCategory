//
//  UIApplication+XHCategory.m
//  XHCategory
//
//  Created by stone win on 2022/2/28.
//

#import "UIApplication+XHCategory.h"

@implementation UIApplication (XHCategory)

// copied from IQKeyboardManager.m of ver6.5.9
/** Getting keyWindow. */
- (UIWindow *)xh_keyWindow
{
//    UIView *textFieldView = _textFieldView;
//
//    if (textFieldView.window)
//    {
//        return textFieldView.window;
//    }
//    else
//    {
//        static __weak UIWindow *cachedKeyWindow = nil;
        UIWindow *cachedKeyWindow = nil;
        
        /*  (Bug ID: #23, #25, #73)   */
        UIWindow *originalKeyWindow = nil;

        #if __IPHONE_OS_VERSION_MAX_ALLOWED >= 130000
        if (@available(iOS 13.0, *)) {
            NSSet<UIScene *> *connectedScenes = [UIApplication sharedApplication].connectedScenes;
            for (UIScene *scene in connectedScenes) {
                if (scene.activationState == UISceneActivationStateForegroundActive && [scene isKindOfClass:[UIWindowScene class]]) {
                    UIWindowScene *windowScene = (UIWindowScene *)scene;
                    for (UIWindow *window in windowScene.windows) {
                        if (window.isKeyWindow) {
                            originalKeyWindow = window;
                            break;
                        }
                    }
                }
            }
        } else
        #endif
        {
        #if __IPHONE_OS_VERSION_MIN_REQUIRED < 130000
            originalKeyWindow = [UIApplication sharedApplication].keyWindow;
        #endif
        }

        //If original key window is not nil and the cached keywindow is also not original keywindow then changing keywindow.
        if (originalKeyWindow)
        {
            cachedKeyWindow = originalKeyWindow;
        }
        
        return cachedKeyWindow;
//    }
}

@end

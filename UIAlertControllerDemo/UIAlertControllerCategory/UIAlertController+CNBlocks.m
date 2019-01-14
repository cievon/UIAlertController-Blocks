//
//  UIAlertController+CNBlocks.m
//  UIAlertControllerDemo
//
//  Created by cievon on 2019/1/14.
//  Copyright © 2019 cievon. All rights reserved.
//

#import "UIAlertController+CNBlocks.h"

CNAlertActionStyle const CNAlertActionStyleDefault = @"CNAlertActionStyleDefault";
CNAlertActionStyle const CNAlertActionStyleDestructive = @"CNAlertActionStyleDestructive";

@interface UIWindow (CNTopVCExt)

- (UIViewController*)_cn_topRootController;
- (UIViewController*)_cn_topViewController;

@end

@interface UIViewController (CNTopVCExt)

- (UIViewController *)_cn_toppest;

@end

@implementation UIAlertController (CNBlocks)

#pragma mark - AlertView

+ (void)cn_showAlertViewWithTitle:(NSString *)title
                          message:(NSString *)message
                      cancelTitle:(NSString *)cancelTitle
                     confirmTitle:(NSString *)confirmTitle
                          confirm:(void (^)(void))confirm {
    [self cn_showInViewController:[self defalutShowViewController] title:title message:message preferredStyle:UIAlertControllerStyleAlert cancelTitle:cancelTitle confirmTitle:confirmTitle confirm:confirm];
}

+ (void)cn_alertViewShowInViewController:(nonnull UIViewController *)viewController
                                   title:(NSString *)title
                                 message:(NSString *)message
                             cancelTitle:(NSString *)cancelTitle
                            confirmTitle:(NSString *)confirmTitle
                                 confirm:(void (^)(void))confirm {
    [self cn_showInViewController:viewController._cn_toppest title:title message:message preferredStyle:UIAlertControllerStyleAlert cancelTitle:cancelTitle confirmTitle:confirmTitle confirm:confirm];
}

+ (void)cn_showAlertViewWithTitle:(NSString *)title
                          message:(NSString *)message
              defalutActionTitles:(NSArray<NSString *> *)defalutActionTitles
                      cancelTitle:(NSString *)cancelTitle
                         complete:(void(^)(NSUInteger index))completion {
    [self cn_showInViewController:[self defalutShowViewController] title:title message:message preferredStyle:UIAlertControllerStyleAlert defalutItems:defalutActionTitles cancelTitle:cancelTitle complete:completion];
    
}

+ (void)cn_alertViewShowInViewController:(nonnull UIViewController *)viewController
                                   title:(NSString *)title
                                 message:(NSString *)message
                     defalutActionTitles:(NSArray<NSString *> *)defalutActionTitles
                             cancelTitle:(NSString *)cancelTitle
                                complete:(void(^)(NSUInteger index))completion {
    [self cn_showInViewController:viewController._cn_toppest title:title message:message preferredStyle:UIAlertControllerStyleAlert defalutItems:defalutActionTitles cancelTitle:cancelTitle complete:completion];
}

+ (void)cn_showAlertViewWithTitle:(NSString *)title
                          message:(NSString *)message
               customActionTitles:(NSArray<NSDictionary<CNAlertActionStyle, NSString *> *> *)customActionTitles
                      cancelTitle:(NSString *)cancelTitle
                         complete:(void(^)(NSUInteger index))completion {
    [self cn_showInViewController:[self defalutShowViewController] title:title message:message preferredStyle:UIAlertControllerStyleAlert destructiveItems:customActionTitles cancelTitle:cancelTitle complete:completion];
}

+ (void)cn_alertViewShowInViewController:(nonnull UIViewController *)viewController
                                   title:(NSString *)title
                                 message:(NSString *)message
                      customActionTitles:(NSArray<NSDictionary<CNAlertActionStyle, NSString *> *> *)customActionTitles
                             cancelTitle:(NSString *)cancelTitle
                                complete:(void(^)(NSUInteger index))completion {
    [self cn_showInViewController:viewController._cn_toppest title:title message:message preferredStyle:UIAlertControllerStyleAlert destructiveItems:customActionTitles cancelTitle:cancelTitle complete:completion];
}

#pragma mark - ActionSheetView

+ (void)cn_showActionSheetWithTitle:(NSString *)title
                            message:(NSString *)message
                        cancelTitle:(NSString *)cancelTitle
                       confirmTitle:(NSString *)confirmTitle
                            confirm:(void (^)(void))confirm {
    [self cn_showInViewController:[self defalutShowViewController] title:title message:message preferredStyle:UIAlertControllerStyleActionSheet cancelTitle:cancelTitle confirmTitle:confirmTitle confirm:confirm];
}

+ (void)cn_actionSheetShowInViewController:(nonnull UIViewController *)viewController
                                     title:(NSString *)title
                                   message:(NSString *)message
                               cancelTitle:(NSString *)cancelTitle
                              confirmTitle:(NSString *)confirmTitle
                                   confirm:(void (^)(void))confirm {
    [self cn_showInViewController:viewController._cn_toppest title:title message:message preferredStyle:UIAlertControllerStyleActionSheet cancelTitle:cancelTitle confirmTitle:confirmTitle confirm:confirm];
}

+ (void)cn_showActionSheetWithTitle:(NSString *)title
                            message:(NSString *)message
                defalutActionTitles:(NSArray<NSString *> *)defalutActionTitles
                        cancelTitle:(NSString *)cancelTitle
                           complete:(void(^)(NSUInteger index))completion {
    [self cn_showInViewController:[self defalutShowViewController] title:title message:message preferredStyle:UIAlertControllerStyleActionSheet defalutItems:defalutActionTitles cancelTitle:cancelTitle complete:completion];
}

+ (void)cn_actionSheetShowInViewController:(nonnull UIViewController *)viewController
                                     title:(NSString *)title
                                   message:(NSString *)message
                       defalutActionTitles:(NSArray<NSString *> *)defalutActionTitles
                               cancelTitle:(NSString *)cancelTitle
                                  complete:(void(^)(NSUInteger index))completion {
    [self cn_showInViewController:viewController._cn_toppest title:title message:message preferredStyle:UIAlertControllerStyleActionSheet defalutItems:defalutActionTitles cancelTitle:cancelTitle complete:completion];
}

+ (void)cn_showActionSheetWithTitle:(NSString *)title
                            message:(NSString *)message
                 customActionTitles:(NSArray<NSDictionary<CNAlertActionStyle, NSString *> *> *)customActionTitles
                        cancelTitle:(NSString *)cancelTitle
                           complete:(void(^)(NSUInteger index))completion {
    [self cn_showInViewController:[self defalutShowViewController] title:title message:message preferredStyle:UIAlertControllerStyleActionSheet destructiveItems:customActionTitles cancelTitle:cancelTitle complete:completion];
}

+ (void)cn_actionSheetShowInViewController:(nonnull UIViewController *)viewController
                                     title:(NSString *)title
                                   message:(NSString *)message
                        customActionTitles:(NSArray<NSDictionary<CNAlertActionStyle, NSString *> *> *)customActionTitles
                               cancelTitle:(NSString *)cancelTitle
                                  complete:(void(^)(NSUInteger index))completion {
    [self cn_showInViewController:viewController._cn_toppest title:title message:message preferredStyle:UIAlertControllerStyleActionSheet destructiveItems:customActionTitles cancelTitle:cancelTitle complete:completion];
}

#pragma mark - Private

+ (void)cn_showInViewController:(UIViewController *)viewController
                          title:(NSString *)title
                        message:(NSString *)message
                 preferredStyle:(UIAlertControllerStyle)preferredStyle
                    cancelTitle:(NSString *)cancelTitle
                   confirmTitle:(NSString *)confirmTitle
                        confirm:(void (^)(void))confirm {
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    
    if (confirmTitle) {
        [alertVC addActionWithTitle:confirmTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            if (confirm) {
                confirm();
            }
        }];
    }
    
    if (cancelTitle) {
        [alertVC addCancelActionWithTitle:cancelTitle handler:nil];
    }
    [viewController presentViewController:alertVC animated:YES completion:nil];
}

+ (void)cn_showInViewController:(UIViewController *)viewController
                          title:(NSString *)title
                        message:(NSString *)message
                 preferredStyle:(UIAlertControllerStyle)preferredStyle
                   defalutItems:(NSArray *)items
                    cancelTitle:(NSString *)cancelTitle
                       complete:(void(^)(NSUInteger index))completion {
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    [items enumerateObjectsUsingBlock:^(NSString *itemTitle, NSUInteger index, BOOL *stop) {
        [alertVC addDeafalutActionWithTitle:itemTitle handler:^(UIAlertAction *action) {
            NSUInteger clickIndex = 0;
            if ([items containsObject:action.title]) {
                clickIndex = [items indexOfObject:action.title];
            }
            if (completion) {
                completion(clickIndex);
            }
        }];
    }];
    
    if (cancelTitle) {
        [alertVC addCancelActionWithTitle:cancelTitle handler:nil];
    }
    [viewController presentViewController:alertVC animated:YES completion:nil];
}

+ (void)cn_showInViewController:(UIViewController *)viewController
                          title:(NSString *)title
                        message:(NSString *)message
                 preferredStyle:(UIAlertControllerStyle)preferredStyle
               destructiveItems:(NSArray *)items
                    cancelTitle:(NSString *)cancelTitle
                       complete:(void(^)(NSUInteger index))completion {
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    [items enumerateObjectsUsingBlock:^(NSDictionary *itemsDic, NSUInteger index, BOOL *stop) {
        NSString *title = itemsDic.allValues.firstObject;
        CNAlertActionStyle type = itemsDic.allKeys.firstObject;
        
        UIAlertActionStyle style = (type == CNAlertActionStyleDestructive) ? UIAlertActionStyleDestructive : UIAlertActionStyleDefault;
        [alertVC addActionWithTitle:title style:style handler:^(UIAlertAction *action) {
            __block NSUInteger clickIndex = 0;
            
            [items enumerateObjectsUsingBlock:^(NSDictionary *itemsDic2, NSUInteger index, BOOL *stop) {
                if ([itemsDic2.allValues.firstObject isEqualToString:action.title]) {
                    clickIndex = index;
                    if (completion) {
                        completion(clickIndex);
                    }
                    *stop = YES;
                }
            }];
            
        }];
    }];
    
    if (cancelTitle) {
        [alertVC addCancelActionWithTitle:cancelTitle handler:nil];
    }
    [viewController presentViewController:alertVC animated:YES completion:nil];
}

+ (UIViewController *)defalutShowViewController {
    return [UIApplication sharedApplication].keyWindow._cn_topViewController;
}

- (void)addCancelActionWithTitle:(NSString *)title
                         handler:(void (^)(UIAlertAction *action))handler {
    [self addActionWithTitle:title style:UIAlertActionStyleCancel handler:handler];
}

- (void)addDeafalutActionWithTitle:(NSString *)title
                           handler:(void (^)(UIAlertAction *action))handler {
    [self addActionWithTitle:title style:UIAlertActionStyleDefault handler:handler];
}

- (void)addActionWithTitle:(NSString *)title
                     style:(UIAlertActionStyle)style
                   handler:(void (^)(UIAlertAction *action))handler {
    UIAlertAction *action = [UIAlertAction actionWithTitle:title style:style handler:handler];
    [self addAction:action];
}

@end

@implementation UIWindow (CNTopVCExt)

- (UIViewController*)_cn_topRootController {
    UIViewController *topController = [self rootViewController];
    while ([topController presentedViewController])
        topController = [topController presentedViewController];
    return topController;
}

- (UIViewController*)_cn_topViewController {
    UIViewController *currentTopViewController = [self _cn_topRootController];
    if ([currentTopViewController isKindOfClass:[UITabBarController class]]
        && ((UITabBarController*)currentTopViewController).selectedViewController != nil) {
        currentTopViewController = ((UITabBarController*)currentTopViewController).selectedViewController;
    }
    
    while ([currentTopViewController isKindOfClass:[UINavigationController class]]
           && [(UINavigationController*)currentTopViewController topViewController]) {
        currentTopViewController = [(UINavigationController*)currentTopViewController topViewController];
    }
    return currentTopViewController;
}

@end

@implementation UIViewController (CNTopVCExt)

- (UIViewController *)_cn_toppest {
    UIViewController *toppest = self;
    UIViewController *tmp;
    while ((tmp = toppest.presentedViewController)) {
        toppest = tmp;
    }
    return toppest;
}

@end

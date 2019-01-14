//
//  UIAlertController+CNBlocks.h
//  UIAlertControllerDemo
//
//  Created by cievon on 2019/1/14.
//  Copyright © 2019 cievon. All rights reserved.
//

#import <UIKit/UIKit.h>

@import UIKit;

typedef NSString *CNAlertActionStyle;

extern CNAlertActionStyle const CNAlertActionStyleDefault;
extern CNAlertActionStyle const CNAlertActionStyleDestructive;

@interface UIAlertController (CNBlocks)

#pragma mark - AlertView


/**
 Showing alert in current toppest viewController. Items contain title、message、cancel action、
 confirm action.
 
 @param title
 top title.
 
 @param message
 message body.
 
 @param cancelTitle
 title of cancel action.
 
 @param confirmTitle
 title of confirm action.
 
 @param confirm
 the block handler for confirm action's click.
 */
+ (void)cn_showAlertViewWithTitle:(NSString *)title
                          message:(NSString *)message
                      cancelTitle:(NSString *)cancelTitle
                     confirmTitle:(NSString *)confirmTitle
                          confirm:(void (^)(void))confirm;


/**
 Showing alert in specified viewController. Items contain title、message、cancel action、
 confirm action.
 
 @param viewController
 specified viewController.
 
 @param title
 top title.
 
 @param message
 message body.
 
 @param cancelTitle
 title of cancel action.
 
 @param confirmTitle
 title of confirm action.
 
 @param confirm
 the block handler for confirm action's click.
 */
+ (void)cn_alertViewShowInViewController:(nonnull UIViewController *)viewController
                                   title:(NSString *)title
                                 message:(NSString *)message
                             cancelTitle:(NSString *)cancelTitle
                            confirmTitle:(NSString *)confirmTitle
                                 confirm:(void (^)(void))confirm;


/**
 Showing alert in current toppest viewController. Items contain title、message、add multiple
 defalut style action、cancel action.
 
 @param title
 top title.
 
 @param message
 message body.
 
 @param defalutActionTitles
 add multiple actions of defalut style.
 
 @param cancelTitle
 title of cancel action.
 
 @param completion
 Complete the response callback used by the block to handle the default action and callback the index to the caller.
 */
+ (void)cn_showAlertViewWithTitle:(NSString *)title
                          message:(NSString *)message
              defalutActionTitles:(NSArray<NSString *> *)defalutActionTitles
                      cancelTitle:(NSString *)cancelTitle
                         complete:(void(^)(NSUInteger index))completion;


/**
 Showing alert in specified viewController. Items contain title、message、add multiple
 defalut style action、cancel action.
 
 @param viewController
 specified viewController.
 
 @param title
 top title.
 
 @param message
 message body.
 
 @param defalutActionTitles
 add multiple actions of defalut style.
 
 @param cancelTitle
 title of cancel action.
 
 @param completion
 Complete the response callback used by the block to handle the default action and callback the index to the caller.
 */
+ (void)cn_alertViewShowInViewController:(nonnull UIViewController *)viewController
                                   title:(NSString *)title
                                 message:(NSString *)message
                     defalutActionTitles:(NSArray<NSString *> *)defalutActionTitles
                             cancelTitle:(NSString *)cancelTitle
                                complete:(void(^)(NSUInteger index))completion;


/**
 Showing alert in current toppest viewController. Items contain title、message、add multiple
 custom style (see CNAlertActionStyle) action、cancel action.
 
 @param title
 top title.
 
 @param message
 message body.
 
 @param customActionTitles
 add multiple custom style (see CNAlertActionStyle) actions
 
 @param cancelTitle
 title of cancel action.
 
 @param completion
 Complete the response callback used by the block to handle the default action and callback the index to the caller.
 */
+ (void)cn_showAlertViewWithTitle:(NSString *)title
                          message:(NSString *)message
               customActionTitles:(NSArray<NSDictionary<CNAlertActionStyle, NSString *> *> *)customActionTitles
                      cancelTitle:(NSString *)cancelTitle
                         complete:(void(^)(NSUInteger index))completion;

/**
 Showing alert in specified viewController. Items contain title、message、add multiple
 custom style (see CNAlertActionStyle) action、cancel action.
 
 @param viewController
 specified viewController.
 
 @param title
 top title.
 
 @param message
 message body.
 
 @param customActionTitles
 add multiple custom style (see CNAlertActionStyle) actions
 
 @param cancelTitle
 title of cancel action.
 
 @param completion
 Complete the response callback used by the block to handle the default action and callback the index to the caller.
 */
+ (void)cn_alertViewShowInViewController:(nonnull UIViewController *)viewController
                                   title:(NSString *)title
                                 message:(NSString *)message
                      customActionTitles:(NSArray<NSDictionary<CNAlertActionStyle, NSString *> *> *)customActionTitles
                             cancelTitle:(NSString *)cancelTitle
                                complete:(void(^)(NSUInteger index))completion;

#pragma mark - ActionSheetView

/**
 Showing action sheet in current toppest viewController. Items contain title、message、cancel action、
 confirm action.
 
 @param title
 top title.
 
 @param message
 message body.
 
 @param cancelTitle
 title of cancel action.
 
 @param confirmTitle
 title of confirm action.
 
 @param confirm
 the block handler for confirm action's click.
 */
+ (void)cn_showActionSheetWithTitle:(NSString *)title
                            message:(NSString *)message
                        cancelTitle:(NSString *)cancelTitle
                       confirmTitle:(NSString *)confirmTitle
                            confirm:(void (^)(void))confirm;

/**
 Showing action sheet in specified viewController. Items contain title、message、cancel action、
 confirm action.
 
 @param viewController
 specified viewController.
 
 @param title
 top title.
 
 @param message
 message body.
 
 @param cancelTitle
 title of cancel action.
 
 @param confirmTitle
 title of confirm action.
 
 @param confirm
 the block handler for confirm action's click.
 */
+ (void)cn_actionSheetShowInViewController:(nonnull UIViewController *)viewController
                                     title:(NSString *)title
                                   message:(NSString *)message
                               cancelTitle:(NSString *)cancelTitle
                              confirmTitle:(NSString *)confirmTitle
                                   confirm:(void (^)(void))confirm;

/**
 Showing action sheet in current toppest viewController. Items contain title、message、add multiple
 defalut style action、cancel action.
 
 @param title
 top title.
 
 @param message
 message body.
 
 @param defalutActionTitles
 add multiple actions of defalut style.
 
 @param cancelTitle
 title of cancel action.
 
 @param completion
 Complete the response callback used by the block to handle the default action and callback the index to the caller.
 */
+ (void)cn_showActionSheetWithTitle:(NSString *)title
                            message:(NSString *)message
                defalutActionTitles:(NSArray<NSString *> *)defalutActionTitles
                        cancelTitle:(NSString *)cancelTitle
                           complete:(void(^)(NSUInteger index))completion;

/**
 Showing action sheet in specified viewController. Items contain title、message、add multiple
 defalut style action、cancel action.
 
 @param viewController
 specified viewController.
 
 @param title
 top title.
 
 @param message
 message body.
 
 @param defalutActionTitles
 add multiple actions of defalut style.
 
 @param cancelTitle
 title of cancel action.
 
 @param completion
 Complete the response callback used by the block to handle the default action and callback the index to the caller.
 */
+ (void)cn_actionSheetShowInViewController:(nonnull UIViewController *)viewController
                                     title:(NSString *)title
                                   message:(NSString *)message
                       defalutActionTitles:(NSArray<NSString *> *)defalutActionTitles
                               cancelTitle:(NSString *)cancelTitle
                                  complete:(void(^)(NSUInteger index))completion;

/**
 Showing action sheet in current toppest viewController. Items contain title、message、add multiple
 custom style (see CNAlertActionStyle) action、cancel action.
 
 @param title
 top title.
 
 @param message
 message body.
 
 @param customActionTitles
 add multiple custom style (see CNAlertActionStyle) actions
 
 @param cancelTitle
 title of cancel action.
 
 @param completion
 Complete the response callback used by the block to handle the default action and callback the index to the caller.
 */
+ (void)cn_showActionSheetWithTitle:(NSString *)title
                            message:(NSString *)message
                 customActionTitles:(NSArray<NSDictionary<CNAlertActionStyle, NSString *> *> *)customActionTitles
                        cancelTitle:(NSString *)cancelTitle
                           complete:(void(^)(NSUInteger index))completion;

/**
 Showing action sheet in specified viewController. Items contain title、message、add multiple
 custom style (see CNAlertActionStyle) action、cancel action.
 
 @param viewController
 specified viewController.
 
 @param title
 top title.
 
 @param message
 message body.
 
 @param customActionTitles
 add multiple custom style (see CNAlertActionStyle) actions
 
 @param cancelTitle
 title of cancel action.
 
 @param completion
 Complete the response callback used by the block to handle the default action and callback the index to the caller.
 */
+ (void)cn_actionSheetShowInViewController:(nonnull UIViewController *)viewController
                                     title:(NSString *)title
                                   message:(NSString *)message
                        customActionTitles:(NSArray<NSDictionary<CNAlertActionStyle, NSString *> *> *)customActionTitles
                               cancelTitle:(NSString *)cancelTitle
                                  complete:(void(^)(NSUInteger index))completion;
@end

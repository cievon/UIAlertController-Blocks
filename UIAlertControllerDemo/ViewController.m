//
//  ViewController.m
//  UIAlertControllerDemo
//
//  Created by cievon on 2019/1/14.
//  Copyright © 2019 cievon. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertController+CNBlocks.h"

@interface ViewController () {
    NSString *_title;
    NSString *_message;
    NSString *_cancelTitle;
    NSString *_confirmTitle;
    NSArray<NSString *> *_defalutActionTitles;
    NSArray<NSDictionary<CNAlertActionStyle, NSString *> *> *_customStyleActionTitles;
    NSArray<NSDictionary<CNAlertActionStyle, NSString *> *> *_customStyleActionTitles2;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _title = @"WARNING!";
    _message = @"This is a FBI Warning. You understand!";
    _cancelTitle = @"Cancel";
    _confirmTitle = @"Comfirm";
    _defalutActionTitles = @[@"Less 18 years old",
                             @"Equal 18 years old",
                             @"Greater 18 years old"];
    _customStyleActionTitles = @[@{CNAlertActionStyleDefault : @"I'm a boy"},
                                 @{CNAlertActionStyleDefault : @"I‘m a girl"},
                                 @{CNAlertActionStyleDestructive : @"I'm a boy and girl!"},
                                 @{CNAlertActionStyleDestructive : @"I'm a ET!"}];
    _customStyleActionTitles2 = @[@{CNAlertActionStyleDefault : @"OK"},
                                 @{CNAlertActionStyleDestructive : @"Cancel"}];
}

- (IBAction)alertNormal:(id)sender {
    [UIAlertController cn_showAlertViewWithTitle:_title message:_message cancelTitle:_cancelTitle confirmTitle:_confirmTitle confirm:^{
        NSLog(@"I'm a adult!");
    }];
}

- (IBAction)alertDefalutStyleActions:(id)sender {
    [UIAlertController cn_showAlertViewWithTitle:_title message:_message defalutActionTitles:_defalutActionTitles cancelTitle:_cancelTitle complete:^(NSUInteger index) {
        NSLog(@"index:%ld-- I'm %@", index, self->_defalutActionTitles[index]);
    }];
}

- (IBAction)alertCustomStyleActions:(id)sender {
    [UIAlertController cn_alertViewShowInViewController:self title:_title message:_message customActionTitles:_customStyleActionTitles cancelTitle:_cancelTitle complete:^(NSUInteger index) {
        NSLog(@"index:%ld-- %@", index, self->_customStyleActionTitles[index].allValues.firstObject);
    }];
}

- (IBAction)alertCustomStyleActions2:(id)sender {
    [UIAlertController cn_showAlertViewWithTitle:_title message:_message customActionTitles:_customStyleActionTitles2 cancelTitle:nil complete:^(NSUInteger index) {
        NSLog(@"index:%ld-- %@", index, self->_customStyleActionTitles2[index].allValues.firstObject);
    }];
}

- (IBAction)actionSheetNormal:(id)sender {
    [UIAlertController cn_actionSheetShowInViewController:self title:_title message:_message cancelTitle:_cancelTitle confirmTitle:_confirmTitle confirm:^{
        NSLog(@"I'm a adult!");
    }];
}

- (IBAction)actionSheetDefalutStyleActions:(id)sender {
    [UIAlertController cn_showActionSheetWithTitle:_title message:_message defalutActionTitles:_defalutActionTitles cancelTitle:_cancelTitle complete:^(NSUInteger index) {
        NSLog(@"index:%ld-- I'm %@", index, self->_defalutActionTitles[index]);
    }];
}

- (IBAction)actionSheetCustomStyleActions:(id)sender {
    [UIAlertController cn_showActionSheetWithTitle:_title message:_message customActionTitles:_customStyleActionTitles cancelTitle:_cancelTitle complete:^(NSUInteger index) {
        NSLog(@"index:%ld-- %@", index, self->_customStyleActionTitles[index].allValues.firstObject);
    }];
}

- (IBAction)actionSheetCustomStyleActions2:(id)sender {
    [UIAlertController cn_showActionSheetWithTitle:_title message:_message customActionTitles:_customStyleActionTitles2 cancelTitle:nil complete:^(NSUInteger index) {
        NSLog(@"index:%ld-- %@", index, self->_customStyleActionTitles2[index].allValues.firstObject);
    }];
}

@end

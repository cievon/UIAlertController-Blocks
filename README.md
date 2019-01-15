# UIAlertController+CNBlocks

Convenience methods for UIAlertController. It can add custom style (defalut and destructive) and actions sort by index of NSArray which contain items of custom style's actions.

### Requirements
* Greater iOS 8.0.

### Style

**AlertView**

![](https://github.com/cievon/UIAlertController-CNBlocks/raw/master/markdown_source/alertNormal.png)      ![](https://github.com/cievon/UIAlertController-CNBlocks/raw/master/markdown_source/alertCustomStyleActions2.png)

![](https://github.com/cievon/UIAlertController-CNBlocks/raw/master/markdown_source/alertDefalutStyleActions.png)    ![](https://github.com/cievon/UIAlertController-CNBlocks/raw/master/markdown_source/alertCustomStyleActions.png)

**ActionSheet**

![](https://github.com/cievon/UIAlertController-CNBlocks/raw/master/markdown_source/actionSheetNormal.png)   ![](https://github.com/cievon/UIAlertController-CNBlocks/raw/master/markdown_source/actionSheetCustomStyleActions2.png)

![](https://github.com/cievon/UIAlertController-CNBlocks/raw/master/markdown_source/actionSheetDefalutStyleActions.png)   ![](https://github.com/cievon/UIAlertController-CNBlocks/raw/master/markdown_source/actionSheetCustomStyleActions.png)

### Usage
* Add UIAlertController+CNBlocks.h/m into your project. 

**Alert**

Showing Alert Viiew in current toppest ViewController.  Items contain title、message、cancel action、confirm action.
```objc
[UIAlertController cn_showAlertViewWithTitle:_title message:_message cancelTitle:_cancelTitle confirmTitle:_confirmTitle confirm:^{
        NSLog(@"I'm a adult!");
    }];
```

Showing alert in current toppest viewController. Items contain title、message、add multiple defalut style action、cancel action.
```objc
[UIAlertController cn_showAlertViewWithTitle:_title message:_message defalutActionTitles:_defalutActionTitles cancelTitle:_cancelTitle complete:^(NSUInteger index) {
        NSLog(@"index:%ld-- I'm %@", index, self->_defalutActionTitles[index]);
    }];
```

Showing alert in specified viewController. Items contain title、message、add multiple custom style (see CNAlertActionStyle) action、cancel action.
```objc
[UIAlertController cn_alertViewShowInViewController:self title:_title message:_message customActionTitles:_customStyleActionTitles cancelTitle:_cancelTitle complete:^(NSUInteger index) {
        NSLog(@"index:%ld-- %@", index, self->_customStyleActionTitles[index].allValues.firstObject);
    }];
```

**ActionSheet**

Showing action sheet in specified viewController. Items contain title、message、cancel action、confirm action.
```objc
[UIAlertController cn_actionSheetShowInViewController:self title:_title message:_message cancelTitle:_cancelTitle confirmTitle:_confirmTitle confirm:^{
        NSLog(@"I'm a adult!");
    }];
```

Showing action sheet in current toppest viewController. Items contain title、message、add multiple defalut style action、cancel action.
```objc
[UIAlertController cn_showActionSheetWithTitle:_title message:_message defalutActionTitles:_defalutActionTitles cancelTitle:_cancelTitle complete:^(NSUInteger index) {
        NSLog(@"index:%ld-- I'm %@", index, self->_defalutActionTitles[index]);
    }];
```

Showing action sheet in current toppest viewController. Items contain title、message、add multiple custom style (see CNAlertActionStyle) action、cancel action.
```objc
[UIAlertController cn_showActionSheetWithTitle:_title message:_message customActionTitles:_customStyleActionTitles cancelTitle:_cancelTitle complete:^(NSUInteger index) {
        NSLog(@"index:%ld-- %@", index, self->_customStyleActionTitles[index].allValues.firstObject);
    }];
```

### License
* UIAlertController+CNBlocks is available under the MIT license. See the [LICENSE](https://github.com/cievon/UIAlertController-CNBlocks/blob/master/LICENSE)
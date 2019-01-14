# UIAlertController+CNBlocks

Convenience methods for UIAlertController. It can add custom style (defalut and destructive) and actions sort by index of NSArray which contain items of custom style's actions.

### Requirements
Greater iOS 8.0.

### Style

**AlertView**

![](https://github.com/cievon/UIAlertController-CNBlocks/raw/master/markdown_source/alertNormal.png)
![](https://github.com/cievon/UIAlertController-CNBlocks/raw/master/markdown_source/alertCustomStyleActions.png)
![](https://github.com/cievon/UIAlertController-CNBlocks/raw/master/markdown_source/alertDefalutStyleActions.png)
![](https://github.com/cievon/UIAlertController-CNBlocks/raw/master/markdown_source/alertCustomStyleActions2.png)

**ActionSheet**

![](https://github.com/cievon/UIAlertController-CNBlocks/raw/master/markdown_source/actionSheetNormal.png)
![](https://github.com/cievon/UIAlertController-CNBlocks/raw/master/markdown_source/actionSheetCustomStyleActions2.png)
![](https://github.com/cievon/UIAlertController-CNBlocks/raw/master/markdown_source/actionSheetDefalutStyleActions.png)
![](https://github.com/cievon/UIAlertController-CNBlocks/raw/master/markdown_source/actionSheetCustomStyleActions.png)

### Usage
Add UIAlertController+CNBlocks.h/m into your project. 

**Alert**

Showing Alert Viiew in current toppest ViewController.  Items contain title、message、cancel action、confirm action.
```objc
[UIAlertController cn_showAlertViewWithTitle:_title message:_message cancelTitle:_cancelTitle confirmTitle:_confirmTitle confirm:^{
        NSLog(@"I'm a adult!");
    }];
```

**ActionSheet**


# UIAlertController+CNBlocks

Convenience methods for UIAlertController. It can add custom style (defalut and destructive) and actions sort by index of NSArray which contain items of custom style's actions.

### Requirements
Greater iOS 8.0.


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
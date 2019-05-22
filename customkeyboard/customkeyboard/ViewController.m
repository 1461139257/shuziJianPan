//
//  ViewController.m
//  customkeyboard
//
//  Created by liulian on 16/6/12.
//  Copyright © 2016年 liulian. All rights reserved.
//

#import "ViewController.h"
#import "WLDecimalKeyboard.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    WLDecimalKeyboard *inputView = [[WLDecimalKeyboard alloc] init];
    
    self.textField.delegate = self;
    self.textField.inputView = inputView;
    [self.textField reloadInputViews];
}

/// 设置自定义键盘后，delegate 不会被调用？
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
//    NSLog(@"shouldChangeCharactersInRange     %@", [textField.text stringByReplacingCharactersInRange:range withString:string]);
    
    return YES;
}

@end

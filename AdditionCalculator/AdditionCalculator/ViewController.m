//
//  ViewController.m
//  AdditionCalculator
//
//  Created by mazhi'hua on 15/8/9.
//  Copyright (c) 2015年 mazhi'hua. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *text1;
@property (weak, nonatomic) IBOutlet UITextField *text2;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
- (IBAction)sumBtnClick:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sumBtnClick:(id)sender {
    int n1 = [self.text1.text intValue];
    int n2 = [self.text2.text intValue];
    int result = n1 + n2;
    NSString * s = [NSString stringWithFormat:@"%d",result];
    
    self.resultLabel.text = s ;
    
    //失去第一响应者
//    [self.text1 resignFirstResponder];
//    [self.text2 resignFirstResponder];
    [self.view endEditing:YES];
    
}
@end

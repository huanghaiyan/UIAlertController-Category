//
//  ViewController.m
//  UIAlertController-Category
//
//  Created by 黄海燕 on 16/6/3.
//  Copyright © 2016年 huanghy. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertController+AlertCreate.h"
@interface ViewController ()<UIAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)clickAlertView:(id)sender {
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"提示"
                                                                   titleFont:[UIFont systemFontOfSize:18]
                                                                     content:@"网络无连接"
                                                                 contentFont:[UIFont systemFontOfSize:15]
                                                           cancelActionTitle:@"取消"
                                                           cancelActionColor:[UIColor redColor]
                                                               cancelHandler:^(UIAlertAction *action) {
                                                                   NSLog(@"cancel");
                                                               }                 okActionTitle:@"确定"
                                                               okActionColor:[UIColor blueColor]
                                            okHandler:^(UIAlertAction *UIAlertAction) {
                                                NSLog(@"ok");
                                            }
                                  ];
    
    [self presentViewController:alertVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

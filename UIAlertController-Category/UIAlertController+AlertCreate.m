//
//  UIAlertController+AlertCreate.m
//  UIAlertController-Category
//
//  Created by 黄海燕 on 16/6/3.
//  Copyright © 2016年 huanghy. All rights reserved.
//

#import "UIAlertController+AlertCreate.h"

@implementation UIAlertController (AlertCreate)
+(UIAlertController *)alertControllerWithTitle:(NSString *)title
                                     titleFont:(UIFont *)titleFont
                                       content:(NSString *)content
                                   contentFont:(UIFont *)contentFont
                             cancelActionTitle:(NSString *)cancelActionTitle
                             cancelActionColor:(UIColor *)cancelActionColor
                                 cancelHandler:(void (^ __nullable)(UIAlertAction *action))cancelHandler
                                 okActionTitle:(NSString *)okActionTitle
                                 okActionColor:(UIColor *)okActionColor
                                     okHandler:(void(^__nullable)(UIAlertAction *))okHandler

{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelActionTitle style:UIAlertActionStyleCancel handler:cancelHandler];
    [cancelAction setValue:cancelActionColor forKey:@"titleTextColor"];
    [alertController addAction:cancelAction];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:okActionTitle style:UIAlertActionStyleDefault handler:okHandler];
    [okAction setValue:okActionColor forKey:@"titleTextColor"];
    [alertController addAction:okAction];

    //Custom Title
    NSMutableAttributedString *titleStr = [[NSMutableAttributedString alloc] initWithString:title];
    [titleStr addAttribute:NSFontAttributeName
                  value:titleFont
                  range:NSMakeRange(0, titleStr.length)];
    [alertController setValue:titleStr forKey:@"attributedTitle"];
    
    NSMutableAttributedString *contentStr = [[NSMutableAttributedString alloc] initWithString:content];
    [contentStr addAttribute:NSFontAttributeName
                   value:contentFont
                   range:NSMakeRange(0, contentStr.length)];
    [alertController setValue:contentStr forKey:@"attributedMessage"];

    
    return alertController;
}
@end

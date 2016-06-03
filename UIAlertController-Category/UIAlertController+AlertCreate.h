//
//  UIAlertController+AlertCreate.h
//  UIAlertController-Category
//
//  Created by 黄海燕 on 16/6/3.
//  Copyright © 2016年 huanghy. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIAlertController (AlertCreate)
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
                                 ;


@end

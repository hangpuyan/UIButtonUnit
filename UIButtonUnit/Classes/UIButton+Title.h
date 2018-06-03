//
//  UIButton+Title.h
//  AudioNote
//
//  Created by sogou-Yan on 2018/4/11.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Title)

/**
 create a new button title | aTitleFont | titlecolor | image | cornerRadius | enabled | rect | Targrt | action |
 @return button
 */
+ (UIButton *)buttonWithTitle:(NSString *)title
                    titleFont:(CGFloat)aTitleFont
             titleColorNormal:(UIColor *)aTitleColorNormal
            titleColorHilight:(UIColor *)aTitleColorHilight
            titleColorDisable:(UIColor *)aTitleColorDisable
        backgroundImageNoraml:(NSString *)aBackgroundImageNoraml
       backgroundImageHilight:(NSString *)aBackgroundImageHilight
       backgroundImageDisable:(NSString *)aBackgroundImageDisable
              backgroundColor:(UIColor *)backgroundColor
                 cornerRadius:(CGFloat)aCornerRadius
                      enabled:(BOOL)aEnabled
                         rect:(CGRect)rect
                       Targrt:(id)target
                       action:(SEL)action
             forControlEvents:(UIControlEvents)controlEvents;

@end

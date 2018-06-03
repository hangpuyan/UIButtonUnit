//
//  UIButton+Title.m
//  AudioNote
//
//  Created by sogou-Yan on 2018/4/11.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "UIButton+Title.h"

@implementation UIButton (Title)

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
             forControlEvents:(UIControlEvents)controlEvents {
    UIButton *button = [[UIButton alloc]init];
    [button setEnabled:aEnabled];
    [button setTitle:title titleFont:aTitleFont titleColorNormal:aTitleColorNormal titleColorHilight:aTitleColorHilight titleColorDisable:aTitleColorDisable];
    [button setBackgroundImageNormal:aBackgroundImageNoraml backgroundImageHilight:aBackgroundImageHilight backgroundImageDisable:aBackgroundImageDisable];
    button.layer.cornerRadius = aCornerRadius;
    button.layer.masksToBounds = YES;
    button.backgroundColor = backgroundColor;
    [button setFrame:rect];
    [button addTarget:target action:action forControlEvents:controlEvents];
    return button;
}

- (void)setTitle:(NSString *)aTitle titleFont:(CGFloat)aTitleFont titleColorNormal:(UIColor *)aTitleColorNormal titleColorHilight:(UIColor *)aTitleColorHilight titleColorDisable:(UIColor *)aTitleColorDisable {
    [self setTitle:aTitle forState:UIControlStateNormal];
    self.titleLabel.font = [UIFont systemFontOfSize:aTitleFont];
    [self setTitleColor:aTitleColorNormal forState:UIControlStateNormal];
    [self setTitleColor:aTitleColorHilight forState:UIControlStateHighlighted];
    [self setTitleColor:aTitleColorDisable forState:UIControlStateDisabled];
}

- (void)setBackgroundImageNormal:(NSString *)aBGImageNormal backgroundImageHilight:(NSString *)aBGImageHilight backgroundImageDisable:(NSString *)aBGImageDisable {
    if (aBGImageNormal.length) {
        [self setBackgroundImage:[UIImage imageNamed:aBGImageNormal]  forState:UIControlStateNormal];
    }
    if (aBGImageHilight.length) {
        [self setBackgroundImage:[UIImage imageNamed:aBGImageHilight] forState:UIControlStateHighlighted];
    }
    if (aBGImageDisable.length) {
        [self setBackgroundImage:[UIImage imageNamed:aBGImageDisable] forState:UIControlStateDisabled];
    }
}

@end

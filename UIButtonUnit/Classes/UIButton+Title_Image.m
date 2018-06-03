//
//  UIButton+Title_Image.m
//  AudioNote
//
//  Created by sogou-Yan on 2018/4/11.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "UIButton+Title_Image.h"
#import "UIButton+ImageTitleSpacing.h"

@implementation UIButton (Title_Image)

+ (UIButton *)buttonWithTitleString:(NSString *)titleString
                   titleColorNormal:(UIColor *)titleColorNormal
                  titleColorHilight:(UIColor *)titleColorHilight
               titleColorDisenabled:(UIColor *)titleColorDisenabled
                        normalImage:(NSString *)normalImage
                       hilightImage:(NSString *)hilightImage
                    disenabledImage:(NSString *)disenabledImage
                      normalBgImage:(NSString *)normalBgImage
                     hilightBgImage:(NSString *)hilightBgImage
                  disenabledBgImage:(NSString *)disenabledBgImage
                          titleFont:(CGFloat)titleFont
                               rect:(CGRect)rect
                             targrt:(id)target
                             action:(SEL)action
                   forControlEvents:(UIControlEvents)controlEvents {
    UIButton *button = [[UIButton alloc] initWithFrame:rect];
    [button setTitle:titleString titleFont:titleFont titleColorNormal:titleColorNormal titleColorHilight:titleColorHilight titleColorDisable:titleColorDisenabled];
    [button setImageNormal:normalImage imageHilight:hilightImage imageDisable:disenabledImage];
    [button setBackgroundImageNormal:normalBgImage backgroundImageHilight:hilightBgImage backgroundImageDisable:disenabledBgImage];
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
- (void)setImageNormal:(NSString *)aImageNormal imageHilight:(NSString *)aImageHilight imageDisable:(NSString *)aImageDisable {
    if (aImageNormal.length) {
        [self setImage:[UIImage imageNamed:aImageNormal] forState:UIControlStateNormal];
    }
    if (aImageHilight.length) {
        [self setImage:[UIImage imageNamed:aImageHilight] forState:UIControlStateHighlighted];
    }
    if (aImageDisable.length) {
        [self setImage:[UIImage imageNamed:aImageDisable] forState:UIControlStateDisabled];
    }
}

@end

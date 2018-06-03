//
//  UIButton+Image.m
//  AudioNote
//
//  Created by sogou-Yan on 2018/4/11.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "UIButton+Image.h"

@implementation UIButton (Image)

+ (UIButton *)buttonWithImageNormalString:(NSString *)imageNormalString
                       imageHilightString:(NSString *)imageHilightString
                    imageDisenabledString:(NSString *)imageDisenabledString
                      imageBgNormalString:(NSString *)imageBgNormalString
                     imageBgHilightString:(NSString *)imageBgHilightString
                  imageBgDisenabledString:(NSString *)imageBgDisenabledString
                          backgroundColor:(UIColor *)backgroundColor
                                      tag:(NSInteger)tag
                                     rect:(CGRect)rect
                                   targrt:(id)target
                                   action:(SEL)action
                         forControlEvents:(UIControlEvents)controlEvents {
    UIButton *button = [[UIButton alloc] initWithFrame:rect];
    [button setBackgroundImageNormal:imageBgNormalString backgroundImageHilight:imageBgHilightString backgroundImageDisable:imageBgDisenabledString];
    [button setImageNormal:imageNormalString imageHilight:imageHilightString imageDisable:imageDisenabledString];
    button.tag = tag;
    [button setBackgroundColor:backgroundColor];
    [button addTarget:target action:action forControlEvents:controlEvents];
    return button;
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

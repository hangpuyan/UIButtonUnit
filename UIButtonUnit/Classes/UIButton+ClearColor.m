//
//  UIButton+ClearColor.m
//  AudioNote
//
//  Created by sogou-Yan on 2018/4/11.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "UIButton+ClearColor.h"

@implementation UIButton (ClearColor)

+ (UIButton *)buttonWithTargrt:(id)target
                        action:(SEL)action
              forControlEvents:(UIControlEvents)controlEvents {
    UIButton *button = [[UIButton alloc] init];
    [button setBackgroundColor:[UIColor clearColor]];
    [button addTarget:target action:action forControlEvents:controlEvents];
    return button;
}

@end

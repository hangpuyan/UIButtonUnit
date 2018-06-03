//
//  UIButton+ClearColor.h
//  AudioNote
//
//  Created by sogou-Yan on 2018/4/11.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (ClearColor)

+ (UIButton *)buttonWithTargrt:(id)target
                        action:(SEL)action
              forControlEvents:(UIControlEvents)controlEvents;

@end

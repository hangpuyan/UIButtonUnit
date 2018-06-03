//
//  UIButton+Image.h
//  AudioNote
//
//  Created by sogou-Yan on 2018/4/11.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Image)

/** image button : imageNormalString | imageHilightString | imageDisenabledString | imageBgNormalString | imageBgHilightString |imageBgDisenabledString | backgroundColor| tag | rect | target | action */
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
                         forControlEvents:(UIControlEvents)controlEvents;

@end

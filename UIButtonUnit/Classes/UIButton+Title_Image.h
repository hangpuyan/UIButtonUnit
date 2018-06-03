//
//  UIButton+Title_Image.h
//  AudioNote
//
//  Created by sogou-Yan on 2018/4/11.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Title_Image)

/** custom button image title */
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
                   forControlEvents:(UIControlEvents)controlEvents;

@end

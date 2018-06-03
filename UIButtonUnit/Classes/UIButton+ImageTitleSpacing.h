//
//  UIButton+Extension.h
//  AudioNote
//
//  Created by Yan on 14/6/11.
//  Copyright © 2016年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, YHPButtonEdgeInsetsStyle) {
    YHPButtonEdgeInsetsStyleTop, // image在上，label在下
    YHPButtonEdgeInsetsStyleLeft, // image在左，label在右
    YHPButtonEdgeInsetsStyleBottom, // image在下，label在上
    YHPButtonEdgeInsetsStyleRight // image在右，label在左
};
@interface UIButton (ImageTitleSpacing)
/**
 *  设置button的titleLabel和imageView的布局样式，及间距
 *
 *  @param style titleLabel和imageView的布局样式
 *  @param space titleLabel和imageView的间距
 */
- (void)buttonWithEdgeInsetsStyle:(YHPButtonEdgeInsetsStyle)style
                        imageTitleSpace:(CGFloat)space;
@end

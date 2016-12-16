//
//  UIView+XJExtension.m
//  LXJKeyBoard
//
//  Created by 李晓俊 on 16/12/16.
//  Copyright © 2016年 李晓俊. All rights reserved.
//

#import "UIView+XJExtension.h"

@implementation UIView (XJExtension)
/**
 *  输出所有子控件
 */
+ (UIView *)ff_foundViewInView:(UIView *)view clazzName:(NSString *)clazzName {
    // 递归出口
    if ([view isKindOfClass:NSClassFromString(clazzName)]) {
        return view;
    }
    // 遍历所有子视图
    for (UIView *subView in view.subviews) {
        UIView *foundView = [self ff_foundViewInView:subView clazzName:clazzName];
        if (foundView) {
            return foundView;
        }
    }
    return nil;
}
@end

//
//  UITextField+XJExtension.h
//  LXJKeyBoard
//
//  Created by 李晓俊 on 16/12/16.
//  Copyright © 2016年 李晓俊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (BXExtension)
- (NSRange)selectedRange;
- (void)setSelectedRange:(NSRange) range;
@end

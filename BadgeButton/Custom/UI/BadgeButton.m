//
//  BadgeButton.m
//  Button
//
//  Created by xia on 2019/4/3.
//  Copyright © 2019 xia. All rights reserved.
//

#import "BadgeButton.h"

@implementation BadgeButton

+ (instancetype)buttonWithType:(UIButtonType)buttonType {
    BadgeButton *btn = [super buttonWithType:buttonType];
    btn.titleLabel.backgroundColor = UIColor.redColor;
    [btn setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    return btn;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.titleLabel.hidden = !(self.titleLabel.text.length);
    if (self.titleLabel.text.length) {
        self.titleLabel.layer.masksToBounds = YES;
        // 1.宽高增加5,是为了让titleLabel变成圆圈时的text不那么贴边沿. 2.增加了高度就得修改y，让其重新居中 3.titleLabel的宽是会跟着内容自动改变的，当宽小于高时要求宽最小得和高一样大这样还是一个圆圈.
        CGRect frame =  CGRectMake(self.titleLabel.frame.origin.x, self.titleLabel.frame.origin.y-2.5, MAX(self.titleLabel.frame.size.width+5, self.titleLabel.frame.size.height+5), self.titleLabel.frame.size.height+5);
        
        self.titleLabel.frame = frame;
        self.titleLabel.layer.cornerRadius = frame.size.height * 0.5;
    }
}

@end

//
//  ViewController.m
//  BadgeButton
//
//  Created by xia on 2019/4/3.
//  Copyright © 2019 xia. All rights reserved.
//

#import "ViewController.h"
#import "BadgeButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BadgeButton *btn = [BadgeButton buttonWithType:UIButtonTypeCustom];
    UIImage *image = [UIImage imageNamed:@"返回"];
    btn.frame = CGRectMake(0, 0, 55, 44);
    [btn setImage:image forState:UIControlStateNormal];
    
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    self.navigationItem.leftBarButtonItem = backItem;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [btn setTitle:nil forState:UIControlStateNormal];
    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [btn setTitle:@"1" forState:UIControlStateNormal];
    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [btn setTitle:@"99" forState:UIControlStateNormal];
    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [btn setTitle:@"99+" forState:UIControlStateNormal];
    });
}

@end

//
//  BaseViewController.m
//  PersonHelp
//
//  Created by xuejianfeng on 2017/3/7.
//  Copyright © 2017年 PersonHelp. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    NSLog(@"%@ was dealloc", NSStringFromClass([self class]));
}
@end

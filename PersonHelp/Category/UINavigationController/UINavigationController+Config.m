//
//  UINavigationController+Config.m
//  PersonHelp
//
//  Created by xuejianfeng on 2017/3/8.
//  Copyright © 2017年 PersonHelp. All rights reserved.
//

#import "UINavigationController+Config.h"

@implementation UINavigationController (Config)
#pragma mark - 设置 navbar 的背景为蓝色、图标颜色为白色、标题颜色为白色
-(void)configNavBarColor
{
    /* TODO gdj
     //说明： setBarTintColor 设置的颜色与实际显示的颜色有偏差，经反复测试与查询，得知基本原因可能为：由于navbar默认是半透明的，故而实际显示颜色会不同。此时通过反复测试发现，调整setBarTintColor为UIColorFromRGB(0x09b7d5)后显示颜色方为DOCTOR_COLOR_BLUE(0x21bed9)。而实际上ios sdk 本身提供了方法可以设置不透明，做法是设置 navBar.translucent = NO (navBar.barStyle = UIBarStyleBlack 该语句应该不需要)，这种情况下navbar显示颜色与设置颜色相同，但会出现2个问题，1是view显示会从navbar下面开始，而不是从windows的顶端开始，而frame终显示的origin.y为0，height仍为568，这里感觉有问题；2是我的代码中很多的地方y在原基础上加上了navbar的高度，故而会下挫一个navbar高度，留有空白，这里改起来太麻烦了。
     // 另外，view的背景需要设为白色
     navBar.barStyle = UIBarStyleBlack;// 设置为不透明
     navBar.translucent = NO; // 设置为不透明
     //*/
    [self.navigationBar setBarTintColor:[UIColor colorWithRed:33/255. green:190/255. blue:217/255. alpha:1.0]];// 显示颜色是：0x21bed9 即 DOCTOR_COLOR_BLUE
    [self.navigationBar  setTintColor:[UIColor whiteColor]];
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
}
@end

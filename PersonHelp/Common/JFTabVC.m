//
//  JFTabVC.m
//  PersonHelp
//
//  Created by xuejianfeng on 2017/3/8.
//  Copyright © 2017年 PersonHelp. All rights reserved.
//

#import "JFTabVC.h"
#import "JFHomeViewVC.h"
#import "JFPersonSettingVC.h"
#import "JFAddressBookVC.h"
#import "UINavigationController+Config.h"

@interface JFTabVC ()

@end

@implementation JFTabVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //首页
    JFHomeViewVC *homeCtrl = [JFHomeViewVC new];
    [self addChildViewController:homeCtrl imageName:@"icon_bottom_add" title:@"首页"];
    //通讯录
    JFAddressBookVC *profileCtrl = [JFAddressBookVC new];
    [self addChildViewController:profileCtrl imageName:@"icon_bottom_contact" title:@"通讯录"];
    //个人
    JFPersonSettingVC *discoverCtrl = [JFPersonSettingVC new];
    [self addChildViewController:discoverCtrl imageName:@"icon_bottom_setting" title:@"个人"];
}

//添加子控制器,设置标题与图片
- (void)addChildViewController:(UIViewController *)childCtrl imageName:(NSString *)imageName title:(NSString *)title{
    
    //设置选中与未选中的图片-->指定一下渲染模式-->图片以原样的方式显示出来
    childCtrl.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childCtrl.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"%@_highlight",imageName]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //设置标题
    childCtrl.title = title;
    
    //指定一下属性
    NSDictionary *normalAttrDict = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:12], NSFontAttributeName, nil];
    [childCtrl.tabBarItem setTitleTextAttributes:normalAttrDict forState:UIControlStateNormal];
    
    UIColor *textColor = [UIColor colorWithRed:(68./255.) green:(181./255.) blue:(233./255.) alpha:1.];
    NSDictionary *selectedAttrDict = [NSDictionary dictionaryWithObjectsAndKeys:textColor, NSForegroundColorAttributeName, nil];
    [childCtrl.tabBarItem setTitleTextAttributes:selectedAttrDict forState:UIControlStateSelected];
    
    UINavigationController *navCtrl = [[UINavigationController alloc] initWithRootViewController:childCtrl];
    [navCtrl configNavBarColor];
    [self addChildViewController:navCtrl];
}

@end

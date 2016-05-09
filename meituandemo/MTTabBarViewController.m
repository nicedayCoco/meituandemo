//
//  MTTabBarViewController.m
//  meituandemo
//
//  Created by xh on 16/5/6.
//  Copyright © 2016年 xh. All rights reserved.
//

#import "MTTabBarViewController.h"
#import "MTTabBarView.h"
#import "MTNavigationController.h"
#import "MTMeViewController.h"
#import "MTHomeViewController.h"
#import "MTVisitViewController.h"
#import "MTMerchantViewController.h"
#import "MTMoreViewController.h"
@interface MTTabBarViewController () <mttabarDelegate>

@property(nonatomic,strong) MTTabBarView *costomTabBar;

@end

@implementation MTTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpTabBar];
    [self setUpAllChildViewController];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    for (UIView *child in self.tabBar.subviews) {
        if ([child isKindOfClass:[UIControl class]]) {
            [child removeFromSuperview];
        }
    }
}

- (void)setUpTabBar
{
    MTTabBarView *customTabBar = [[MTTabBarView alloc]init];
    customTabBar.delegate = self;
    customTabBar.frame = self.tabBar.bounds;
    self.costomTabBar = customTabBar;
    [self.tabBar addSubview:customTabBar];
}

- (void)setUpAllChildViewController
{
    MTHomeViewController *homeViewCtr = [[MTHomeViewController alloc]init];
    [self setUpChildViewController:homeViewCtr title:@"首页" imageName:@"icon_tabbar_homepage" selectedImgName:@"icon_tabbar_homepage_selected"];
    
    MTVisitViewController *visitViewCtr = [[MTVisitViewController alloc]init];
    [self setUpChildViewController:visitViewCtr title:@"上门" imageName:@"icon_tabbar_onsite" selectedImgName:@"icon_tabbar_onsite_selected"];
    
    MTMeViewController *meViewCtr = [[MTMeViewController alloc]init];
    [self setUpChildViewController:meViewCtr title:@"商家" imageName:@"icon_tabbar_merchant_normal" selectedImgName:@"icon_tabbar_merchant_selected"];

    MTMerchantViewController *MerchantViewCtr = [[MTMerchantViewController alloc]init];
    [self setUpChildViewController:MerchantViewCtr title:@"我的" imageName:@"icon_tabbar_mine" selectedImgName:@"icon_tabbar_mine_selected"];

    MTMoreViewController *MoreViewCtr = [[MTMoreViewController alloc]init];
    [self setUpChildViewController:MoreViewCtr title:@"更多" imageName:@"icon_tabbar_misc" selectedImgName:@"icon_tabbar_misc_selected"];

    
//    MTHomeViewController
//    MTVisitViewController
//    MTMerchantViewController
//    MTMoreViewController
}

- (void)setUpChildViewController:(UIViewController *)controller title:(NSString *)title imageName:(NSString *)imgName selectedImgName:(NSString *)selectImageName
{
    controller.tabBarItem.title = title;
    controller.tabBarItem.image = [UIImage imageNamed:imgName];
    controller.tabBarItem.selectedImage = [UIImage imageNamed:selectImageName];
    
    MTNavigationController *navCtr = [[MTNavigationController alloc]initWithRootViewController:controller];
    [self addChildViewController:navCtr];
    [self.costomTabBar addTabBarButtonWithItem:controller.tabBarItem];
}

#pragma mark ---- delegate
- (void)tabBar:(MTTabBarView *)tabBar didselectedButtonFrom:(int)from to:(int)to
{
    self.selectedIndex = to;
}

#pragma mark -----  private method

@end

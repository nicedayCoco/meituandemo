//
//  MTTabBarViewController.m
//  meituandemo
//
//  Created by xh on 16/5/6.
//  Copyright © 2016年 xh. All rights reserved.
//

#import "MTTabBarViewController.h"
#import "MTTabBarView.h"
@interface MTTabBarViewController ()

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
    
}

- (void)setUpAllChildViewController
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

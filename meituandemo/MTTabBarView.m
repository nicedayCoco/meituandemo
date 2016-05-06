//
//  MTTabBarView.m
//  meituandemo
//
//  Created by xh on 16/5/6.
//  Copyright © 2016年 xh. All rights reserved.
//

#import "MTTabBarView.h"
#import "MTTabBarButton.h"
@implementation MTTabBarView

- (void)addTabBarButtonWithItem:(UITabBarItem *)item
{
    MTTabBarButton *button = [[MTTabBarButton alloc]init];
    [self addSubview:button];
    
    button.item = item;
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchDown];
    
    if (self.subviews.count == 1) {
        [self buttonClick:button];
    }
    
}

- (void)buttonClick:(MTTabBarButton*)button
{
    
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

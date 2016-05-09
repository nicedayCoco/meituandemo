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
    if ([self.delegate respondsToSelector:@selector(tabBar:didselectedButtonFrom:to:)]) {
        [self.delegate tabBar:self didselectedButtonFrom:(int)self.selectedButton.tag to:(int)button.tag];
    }
    self.selectedButton.selected = NO;
    button.selected = YES;
    self.selectedButton = button;
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat buttonW = self.frame.size.width/self.subviews.count;
    CGFloat buttonH = self.frame.size.height;
    CGFloat buttonY = 0;
    for (int index = 0; index < self.subviews.count; index ++) {
        MTTabBarButton *button = self.subviews[index];
        
        CGFloat buttonX = index* buttonW;
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        button.tag = index;
    }
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

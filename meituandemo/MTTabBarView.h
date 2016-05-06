//
//  MTTabBarView.h
//  meituandemo
//
//  Created by xh on 16/5/6.
//  Copyright © 2016年 xh. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MTTabBarButton;
@class MTTabBarView;

@protocol mttabarDelegate <NSObject>
@optional
- (void)taBar:(MTTabBarView *)tabBar didselectedButtonFrom:(int)from to:(int)to;
@end


@interface MTTabBarView : UIView
@property(nonatomic,weak) id <mttabarDelegate> delegate;

@property (nonatomic,strong) MTTabBarButton *selectedButton;
- (void)addTabBarButtonWithItem:(UITabBarItem *)item;
@end

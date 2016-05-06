//
//  MTTabBarButton.m
//  meituandemo
//
//  Created by xh on 16/5/6.
//  Copyright © 2016年 xh. All rights reserved.
//
#define MTTabBarButtonImgRatio 0.6
#import "MTTabBarButton.h"

@implementation MTTabBarButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageView.contentMode = UIViewContentModeCenter;
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.font = [UIFont systemFontOfSize:11];
        
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self setTitleColor:navigationBarColor forState:UIControlStateSelected];
        
    }
    return self;
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imgW = contentRect.size.width;
    CGFloat imgH = contentRect.size.height*MTTabBarButtonImgRatio;
    return CGRectMake(0, 0, imgW, imgH);
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat titleY = contentRect.size.height*MTTabBarButtonImgRatio;
    CGFloat titleW = contentRect.size.width;
    CGFloat titleH = contentRect.size.height - titleY;
    return CGRectMake(0, titleY, titleW, titleH);
}

- (void)setItem:(UITabBarItem *)item
{
    _item = item;
    [self setTitle:item.title forState:UIControlStateNormal];
    [self setImage:item.image forState:UIControlStateNormal];
    [self setImage:item.selectedImage forState:UIControlStateSelected];
}
@end

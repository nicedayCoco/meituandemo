//
//  GetUrlString.m
//  meituandemo
//
//  Created by xh on 16/5/4.
//  Copyright © 2016年 xh. All rights reserved.
//

#import "GetUrlString.h"

@implementation GetUrlString

+ (GetUrlString *)shareManger
{
    static GetUrlString *shareUrl = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        shareUrl = [[self alloc]init];
    });
    return shareUrl;
}

- (NSString *)urlWithRushBuy
{
    return @"dsd";
}


@end

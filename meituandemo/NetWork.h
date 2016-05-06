//
//  NetWork.h
//  meituandemo
//
//  Created by xh on 16/5/4.
//  Copyright © 2016年 xh. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^successBlock)(id responseBody);

typedef void(^failureBlock)(NSError *error);

@interface NetWork : NSObject
/** 网络请求 */
+ (void)sendGetUrl:(NSString *)url withParams:(NSDictionary *)params success:(successBlock) success failure:(failureBlock) failure;


@end

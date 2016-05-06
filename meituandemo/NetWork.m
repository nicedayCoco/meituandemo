//
//  NetWork.m
//  meituandemo
//
//  Created by xh on 16/5/4.
//  Copyright © 2016年 xh. All rights reserved.
//

#import "NetWork.h"
#import "AFNetworking.h"
@implementation NetWork
+ (void)sendGetUrl:(NSString *)url withParams:(NSDictionary *)params success:(successBlock)success failure:(failureBlock)failure
{
    NSString *urlStr = [url stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    AFHTTPRequestOperationManager *manger = [AFHTTPRequestOperationManager manager];
    [manger GET:urlStr parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

@end

//
//  Engine.m
//  DistributionQuery
//
//  Created by Macx on 16/10/8.
//  Copyright © 2016年 Macx. All rights reserved.
//

#import "Engine.h"
#import "ASIHTTPRequest.h"
#import "ASIFormDataRequest.h"
@implementation Engine
#pragma mark --获取首页轮播图
+(void)getFirstImagesuccess:(SuccessBlock)aSuccess error:(ErrorBlock)aError{
    NSString * urlStr =[NSString stringWithFormat:@"%@MobileIndex/MGetNews.ashx",SERVICE];
     NSURL * url = [NSURL URLWithString:urlStr];
    __weak ASIFormDataRequest * req = [ASIFormDataRequest requestWithURL:url];
    [req setCompletionBlock:^{
        
         NSLog(@">>>%@",req.responseString);
        NSDictionary * dic = [NSJSONSerialization JSONObjectWithData:req.responseData options:NSJSONReadingMutableContainers error:nil];
        aSuccess(dic);
    }];
    [req startAsynchronous];
    [req  setFailedBlock:^{
         NSLog(@"失败%@",req.responseString);
    }];
 
}







@end

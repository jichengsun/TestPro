//
//  YCGetTopicCommand.m
//  YCMath345-iOS
//
//  Created by jiChengSun on 15/5/5.
//  Copyright (c) 2015年 jichengsun. All rights reserved.


#import "YCGetTopicCommand.h"
#import "NSString+URLEncoding.h"

@implementation YCGetTopicCommand
-(NSString*)requestUrl{
    
    return [[NSString stringWithFormat:@"%s%s",HTTP_REQUEST_HOST,URL_GET_TOPIC] URLEncodedString];
    
}


-(NSInteger)cacheTimeInSeconds{
    
    return 60 * 60 * 24 * 7;
    
}
@end

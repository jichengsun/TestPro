//
//  YCGetBannerCommand.m
//  YCMath345-iOS
//
//  Created by jiChengSun on 15/5/5.
//  Copyright (c) 2015年 jichengsun. All rights reserved.
//

#import "YCGetBannerCommand.h"
#import "NSString+URLEncoding.h"

@implementation YCGetBannerCommand
-(NSString*)requestUrl{

    return [[NSString stringWithFormat:@"%s%s",HTTP_REQUEST_HOST,URL_GET_BANNER] URLEncodedString];

}


-(NSInteger)cacheTimeInSeconds{
    
    return 60 * 60 * 24 * 7;
    
}
@end

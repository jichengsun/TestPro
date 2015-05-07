//
//  YCGetChaptersCommand.m
//  YCMath345-iOS
//
//  Created by jiChengSun on 15/5/5.
//  Copyright (c) 2015年 jichengsun. All rights reserved.
//

#import "YCGetChaptersCommand.h"
#import "NSString+URLEncoding.h"

@implementation YCGetChaptersCommand
-(NSString*)requestUrl{
    
    return [[NSString stringWithFormat:@"%s%s",HTTP_REQUEST_HOST,URL_GET_CHAPTERS] URLEncodedString];
    
}


-(NSInteger)cacheTimeInSeconds{
    
    return 60 * 60 * 24 * 7;
    
}
@end

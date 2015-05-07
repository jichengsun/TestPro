//
//  YCGetWelcomeCommand.m
//  YCMath345-iOS
//
//  Created by jiChengSun on 15/5/5.
//  Copyright (c) 2015年 jichengsun. All rights reserved.
//

#import "YCGetWelcomeCommand.h"
#import "NSString+URLEncoding.h"

@implementation YCGetWelcomeCommand
-(NSString*)requestUrl{
    
    return [[NSString stringWithFormat:@"%s%s",HTTP_REQUEST_HOST,URL_GET_WELCOME] URLEncodedString];
    
}


-(NSInteger)cacheTimeInSeconds{
    
    return 60 * 60 * 24 * 7;
    
}
@end

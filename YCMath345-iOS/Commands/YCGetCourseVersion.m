//
//  YCGetCourseVersion.m
//  YCMath345-iOS
//
//  Created by jiChengSun on 15/5/5.
//  Copyright (c) 2015年 jichengsun. All rights reserved.
//

#import "YCGetCourseVersion.h"
#import "NSString+URLEncoding.h"

@implementation YCGetCourseVersion
-(NSString*)requestUrl{
    
    return [[NSString stringWithFormat:@"%s%s",HTTP_REQUEST_HOST,URL_GET_COURSE_VERSION] URLEncodedString];
    
}


-(NSInteger)cacheTimeInSeconds{
    
    return 60 * 60 * 24 * 7;
    
}
@end

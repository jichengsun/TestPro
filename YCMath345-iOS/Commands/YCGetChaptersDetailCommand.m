//
//  YCGetChaptersDetailCommand.m
//  YCMath345-iOS
//
//  Created by jiChengSun on 15/5/5.
//  Copyright (c) 2015年 jichengsun. All rights reserved.
//

#import "YCGetChaptersDetailCommand.h"
#import "NSString+URLEncoding.h"

@implementation YCGetChaptersDetailCommand{

    NSString *_chapterID;

}

-(instancetype)initWithChapterID:(NSString*)chapterID{

    self = [super init];
    
    if (self) {
        
        _chapterID = chapterID;
    }
    
    return self;

}

-(NSString*)requestUrl{
    
    return [[NSString stringWithFormat:@"%s%s",HTTP_REQUEST_HOST,URL_GET_CHAPTER_DETAIL] URLEncodedString];
    
}

-(id)requestArgument{

    return @{@"chapterID":_chapterID};

}

-(NSInteger)cacheTimeInSeconds{
    
    return 60 * 60 * 24 * 7;
    
}
@end

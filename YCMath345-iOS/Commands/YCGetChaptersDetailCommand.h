//
//  YCGetChaptersDetailCommand.h
//  YCMath345-iOS
//
//  Created by jiChengSun on 15/5/5.
//  Copyright (c) 2015年 jichengsun. All rights reserved.
//
/**
 *  @author jichengsun, 15-05-05 17:05:18
 *
 *  获取章节详情
 */

#import "YCMathRequest.h"

@interface YCGetChaptersDetailCommand : YCMathRequest

-(instancetype)initWithChapterID:(NSString*)chapterID;

@end

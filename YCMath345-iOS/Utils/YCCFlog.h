//
//  YCCFlog.h
//  YCMath345-iOS
//
//  Created by jiChengSun on 15/5/5.
//  Copyright (c) 2015年 jichengsun. All rights reserved.
//

#ifndef YCMath345_iOS_YCCFlog_h
#define YCMath345_iOS_YCCFlog_h

#endif

//Release模式下不输出NSLog
#ifdef DEBUG
#define NSLog(...) NSLog(__VA_ARGS__)
#define debugMethod() NSLog(@"%s", __func__)
#else
#define NSLog(...)
#define debugMethod()
#endif




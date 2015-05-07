//
//  YCNetWorkURLUtil.h
//  YCMath345-iOS
//
//  Created by jiChengSun on 15/5/5.
//  Copyright (c) 2015年 jichengsun. All rights reserved.
//
/**
 *  @author jichengsun, 15-05-05 18:05:10
 *
 *  定义网络请求url 方便更改
 */

#ifndef YCMath345_iOS_YCNetWorkURLUtil_h
#define YCMath345_iOS_YCNetWorkURLUtil_h

typedef enum{
    
    HTTP_REQUEST_STATUS_SUCCESS_DATA = 200,
    HTTP_REQUEST_STATUS_SUCCESS_NODATA = 204,
    HTTP_REQUEST_STATUS_ERROR_ = 204,
    HTTP_REQUEST_STATUS_ERROR_ACCESSTOKEN = 401,
    HTTP_REQUEST_STATUS_ERROR_NOT_EXISIST = 404,
    
}HTTP_REQUEST_STATUS;

#define IS_INTRANET 0   //0:内网 1：外网

#if IS_INTRANET

#define HTTP_REQUEST_HOST "http://m.yangcong345.com"

#else

#define HTTP_REQUEST_HOST "http://m.yangcong345.com"

#endif

//获取顶部banner
#define URL_GET_BANNER "/api/v2/banners"

//获取章节列表
#define URL_GET_CHAPTERS "/api/v1/chapters"

//获取章节详情
#define URL_GET_CHAPTER_DETAIL "/api/v1/chapters"

//获取欢迎页面/广告页面
#define URL_GET_WELCOME "/api/v2/welcome"

//获取题目
#define URL_GET_TOPIC ""

//获取课程教材版本 人教版....
#define URL_GET_COURSE_VERSION "/api/v2/course/versions"

#endif




//
//  NSString+URLEncoding.m
//  SiliconVallyBabyPro
//
//  Created by jiChengSun on 14-9-5.
//  Copyright (c) 2014年 jicheng sun. All rights reserved.
//

#import "NSString+URLEncoding.h"

@implementation NSString (URLEncoding)
- (NSString *)URLEncodedString{

    NSString *encodedString = (NSString*)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)self, (CFStringRef)@"!$&'()*+,-./:;=?@_~%#[]", NULL, kCFStringEncodingUTF8));
    
    return encodedString;

}
@end

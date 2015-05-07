//
//  YCBannerCollectionViewCell.m
//  YCMath345-iOS
//
//  Created by jiChengSun on 15/5/6.
//  Copyright (c) 2015年 jichengsun. All rights reserved.
//

#import "YCBannerCollectionViewCell.h"

@implementation YCBannerCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame{

    self = [super initWithFrame:frame];
    
    if (self) {
        
        self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        self.scrollView.pagingEnabled = YES;
        
        self.scrollView.backgroundColor = [UIColor clearColor];
        
        
        [self addSubview:self.scrollView];
        
        self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, frame.size.height-10, frame.size.width, 10)];
        
        
        [self addSubview:self.pageControl];
    }
    
    return self;
}

@end

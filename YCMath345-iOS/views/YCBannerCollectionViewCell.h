//
//  YCBannerCollectionViewCell.h
//  YCMath345-iOS
//
//  Created by jiChengSun on 15/5/6.
//  Copyright (c) 2015年 jichengsun. All rights reserved.
//
/**
 *  @author jichengsun, 15-05-06 17:05:19
 *
 *  home页顶部banner单元
 
 */
#import <UIKit/UIKit.h>

@interface YCBannerCollectionViewCell : UICollectionViewCell

@property (nonatomic,strong) UIScrollView *scrollView;

@property (nonatomic,strong) UIPageControl *pageControl;
@end

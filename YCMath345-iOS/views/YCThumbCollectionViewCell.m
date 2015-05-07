//
//  YCThumbCollectionViewCell.m
//  YCMath345-iOS
//
//  Created by jiChengSun on 15/5/6.
//  Copyright (c) 2015年 jichengsun. All rights reserved.
//

#import "YCThumbCollectionViewCell.h"

@implementation YCThumbCollectionViewCell


-(instancetype)initWithFrame:(CGRect)frame{

    self = [super initWithFrame:frame];
    
    if (self) {
        
        self.backgroundColor = [UIColor blueColor];
        
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height-30)];
        
        self.imageView.backgroundColor = [UIColor groupTableViewBackgroundColor];
        
        [self addSubview:self.imageView];
        
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, frame.size.height-30, frame.size.width, 30)];
        
        self.titleLabel.textColor = [UIColor blackColor];
        
        self.titleLabel.font = [UIFont systemFontOfSize:12];
        
        self.titleLabel.backgroundColor = [UIColor clearColor];
        
        
        [self addSubview:self.titleLabel];
        
        
    }
    
    return self;

}

@end

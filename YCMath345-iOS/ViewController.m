//
//  ViewController.m
//  YCMath345-iOS
//
//  Created by jiChengSun on 15/5/5.
//  Copyright (c) 2015年 jichengsun. All rights reserved.
//

#import "ViewController.h"
#import "YCGetBannerCommand.h"
#import "YCGetWelcomeCommand.h"
#import "YCGetChaptersCommand.h"
#import "YCGetChaptersDetailCommand.h"
#import "YCGetTopicCommand.h"
#import "YCGetCourseVersion.h"



#import "YCThumbCollectionViewCell.h"
#import "YCBannerCollectionViewCell.h"
@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic,weak) IBOutlet UICollectionView *myCollectionView;

@end

@implementation ViewController{

    YCBannerCollectionViewCell *_headView;

}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    float adFloat = 150;
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    flowLayout.headerReferenceSize =CGSizeMake(self.view.frame.size.width,adFloat+10);
    [self.myCollectionView setCollectionViewLayout:flowLayout];
    
    self.myCollectionView.delegate = self;
    self.myCollectionView.dataSource = self;
    
    
    [self.myCollectionView registerClass:[YCThumbCollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifer"];
    [self.myCollectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ResuableView"];
    
    
    //_headView初始化
    _headView = [[YCBannerCollectionViewCell alloc] init];
    
    
//    YCGetBannerCommand *getBanner = [[YCGetBannerCommand alloc] init];
//    
//    if ([getBanner cacheJson]) {
//        
//        
//        //NSLog(@"getBannerCache:::%@",[getBanner cacheJson]);
//    }
//    
//    [getBanner startWithCompletionBlockWithSuccess:^(YCMathBaseRequest *request) {
//        
//        NSLog(@"onlie getBanner:::%@",[request responseJSONObject]);
//        
//    } failure:^(YCMathBaseRequest *request) {
//        NSLog(@"onlie getBanner:::%ld",(long)[request responseStatusCode]);
//        
//    }];
//    
//    YCGetWelcomeCommand *getWelcome = [[YCGetWelcomeCommand alloc] init];
//    
//    if ([getWelcome cacheJson]) {
//        
//    }
//    
//    [getWelcome startWithCompletionBlockWithSuccess:^(YCMathBaseRequest *request) {
//        
//        NSLog(@"onlie getWelcome:::%@",[request responseJSONObject]);
//
//        
//    } failure:^(YCMathBaseRequest *request) {
//        
//        NSLog(@"onlie getWelcome:::%ld",(long)[request responseStatusCode]);
//
//    }];
//    
//    YCGetChaptersCommand *getChapters = [[YCGetChaptersCommand alloc] init];
//    
//    if ([getChapters cacheJson]) {
//        
//    }
//    
//    [getChapters startWithCompletionBlockWithSuccess:^(YCMathBaseRequest *request) {
//        
//        NSLog(@"onlie getChapters:::%@",[request responseJSONObject]);
//
//        
//    } failure:^(YCMathBaseRequest *request) {
//        NSLog(@"onlie getChapters:::%ld",(long)[request responseStatusCode]);
//
//    }];
//    
//    
//    YCGetChaptersDetailCommand *getChapterDetail = [[YCGetChaptersDetailCommand alloc] initWithChapterID:@"539fb9834353b42976e62d72"];
//    
//    if ([getChapterDetail cacheJson]) {
//        
//    }
//    
//    [getChapterDetail startWithCompletionBlockWithSuccess:^(YCMathBaseRequest *request) {
//        
//        NSLog(@"onlie getChapterDetail:::%@",[request responseJSONObject]);
//
//    } failure:^(YCMathBaseRequest *request) {
//        
//        NSLog(@"onlie getChapterDetail:::%ld",(long)[request responseStatusCode]);
//
//    }];
//    
//    
//    YCGetCourseVersion *getCourseVerison = [[YCGetCourseVersion alloc] init];
//    
//    if ([getCourseVerison cacheJson]) {
//        
//    
//    }
//    
//    [getCourseVerison startWithCompletionBlockWithSuccess:^(YCMathBaseRequest *request) {
//        
//        NSLog(@"online getCourseVerison:::%@",[request responseJSONObject]);
//        
//        
//        
//    } failure:^(YCMathBaseRequest *request) {
//        
//        NSLog(@"online getCourseVerison:::%lu",(long)[request responseStatusCode]);
//
//    }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark UICollectionDelegate

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{

    return 1;

}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    return 2;

}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{


    static NSString *cellId = @"cellIdentifer";
    
    YCThumbCollectionViewCell *cell = [self.myCollectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    
    if (!cell) {
        NSLog(@"无法创建新Celldddddd");
    }
    
    cell.imageView.image = [UIImage imageNamed:@"testDetail"];
    
    cell.titleLabel.text =[NSString stringWithFormat:@"测试测试%i",indexPath.row] ;
    
    return cell;

}

-(UICollectionReusableView*)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{

    UICollectionReusableView *resuableView = [self.myCollectionView dequeueReusableCellWithReuseIdentifier:@"ResuableView" forIndexPath:indexPath];
    
    [resuableView addSubview:_headView];
    
    return resuableView;

}

@end

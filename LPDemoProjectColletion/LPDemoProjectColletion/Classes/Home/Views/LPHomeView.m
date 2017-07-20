//
//  LPHomeView.m
//  LPDemoProjectColletion
//
//  Created by lizhaopeng on 2017/7/19.
//  Copyright © 2017年 LP. All rights reserved.
//

#import "LPHomeView.h"

@implementation LPHomeView

/**
 * 初始化
 */
- (instancetype)init
{
    self = [super init];
    
    if (self) {
        
        /**
         
         需求分析：
         1. 需要一个scrollview 来滑动
         2. 很多collectionView
         3. 单个item可以移动
         4.
         */
        self.backgroundColor = [UIColor clearColor];
    }
    
    return self;
}
/**
  ScrollView
 */
- (void)createScrollView
{
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    scrollView.pagingEnabled = YES;
    
    
    [self addSubview:scrollView];
}

/**
  CollectionView
 */
- (void)createItems
{
    
}

/**
  固定栏
 */



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

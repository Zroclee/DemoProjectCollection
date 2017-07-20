//
//  LPHomeScrollView.h
//  LPDemoProjectColletion
//
//  Created by lizhaopeng on 2017/7/20.
//  Copyright © 2017年 LP. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
  数据源代理
 */
@protocol LPHomeScrollViewDataSource <NSObject>

@optional//选择实现

@end

/**
 传值代理
 */
@protocol LPHomeScrollViewDelegate <NSObject,UIScrollViewDelegate>

@optional // 选择实现

@end

@interface LPHomeScrollView : UIScrollView

/// 数据源
@property (nonatomic, weak) id<LPHomeScrollViewDataSource>dataSource;

/// 代理
@property (nonatomic, weak) id<LPHomeScrollViewDelegate>delegate;




@end



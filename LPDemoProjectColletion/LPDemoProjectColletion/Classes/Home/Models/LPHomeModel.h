//
//  LPHomeModel.h
//  LPDemoProjectColletion
//
//  Created by lizhaopeng on 2017/7/20.
//  Copyright © 2017年 LP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LPHomeModel : NSObject

#pragma mark - 主页坐标数据

/** scrollViewFrame */
@property (nonatomic, assign) CGRect scrollFrame;

/** HomeItemsWidth */
@property (nonatomic, assign) CGFloat itemsWidth;

/** HomeItemsHeight */
@property (nonatomic, assign) CGFloat itemsHeight;

/** HomeItemsImageWidth */
@property (nonatomic, assign) CGFloat itemImageHeight;

/** BottomViewHeight */
@property (nonatomic, assign) CGFloat bottomViewHeight;


@end

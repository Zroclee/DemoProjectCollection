//
//  LPHomeModel.m
//  LPDemoProjectColletion
//
//  Created by lizhaopeng on 2017/7/20.
//  Copyright © 2017年 LP. All rights reserved.
//

#import "LPHomeModel.h"

@implementation LPHomeModel

/** scrollViewFrame */
- (CGRect)scrollFrame
{
    return CGRectMake(0, KMainStatusBarHeight, KMainScreenWidth, KMainScreenHeight-KMainStatusBarHeight-self.bottomViewHeight);
}

/** HomeItemsImageWidth */
- (CGFloat)itemImageHeight
{
    return (KMainScreenWidth/375)*60.0f;
}

/** HomeItemsWidth */
- (CGFloat)itemsWidth
{
    return self.itemImageHeight + KNormalMinSpaceing*2;
}

/** HomeItemsHeight */
- (CGFloat)itemsHeight
{
    return (KMainScreenHeight-KMainStatusBarHeight-self.bottomViewHeight)/6;
}

/** BottomViewHeight */
- (CGFloat)bottomViewHeight
{
    return (KMainScreenWidth/375)*120.0f;
}


@end

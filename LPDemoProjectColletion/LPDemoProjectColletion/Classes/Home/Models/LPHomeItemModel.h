//
//  LPHomeItemModel.h
//  LPDemoProjectColletion
//
//  Created by lizhaopeng on 2017/7/20.
//  Copyright © 2017年 LP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LPHomeItemModel : NSObject

/** 图标 */
@property (nonatomic, strong) NSString *imageName;

/** 标题 */
@property (nonatomic, strong) NSString *title;

/** 类名 */
@property (nonatomic, strong) NSString *className;

/** ID */
@property (nonatomic, assign) NSInteger ID;

/** 位置坐标 */
@property (nonatomic, assign) NSInteger group;
@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;


@end

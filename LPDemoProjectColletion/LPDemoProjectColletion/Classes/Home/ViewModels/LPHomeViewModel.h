//
//  LPHomeViewModel.h
//  LPDemoProjectColletion
//
//  Created by lizhaopeng on 2017/7/20.
//  Copyright © 2017年 LP. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - block块

typedef void(^CallBack)(NSString *str);


@class LPHomeModel;
@interface LPHomeViewModel : NSObject

@property (nonatomic, strong) LPHomeModel *homeModel;


@end

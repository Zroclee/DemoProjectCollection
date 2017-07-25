//
//  LPHomeItemModel.m
//  LPDemoProjectColletion
//
//  Created by lizhaopeng on 2017/7/20.
//  Copyright © 2017年 LP. All rights reserved.
//

#import "LPHomeItemModel.h"

@implementation LPHomeItemModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.imageName = @"";
        self.title = @"应用名";
        self.className = @"";
        self.x = 0;
        self.y = 1;
        self.group = 0;
        
    }
    return self;
}


- (NSInteger)ID
{
    return self.group*100+self.y+10+self.x;
}


@end

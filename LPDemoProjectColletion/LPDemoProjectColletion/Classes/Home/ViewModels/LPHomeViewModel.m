//
//  LPHomeViewModel.m
//  LPDemoProjectColletion
//
//  Created by lizhaopeng on 2017/7/20.
//  Copyright © 2017年 LP. All rights reserved.
//

#import "LPHomeViewModel.h"

#import "LPHomeModel.h"

#import "LPHomeItemModel.h"


@implementation LPHomeViewModel

/**
 * 初始化
 */
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.homeModel = [[LPHomeModel alloc] init];
        
        
    }
    return self;
}

// 处理数组
- (void)dealWithArray:(NSArray *)array
{
    for (LPHomeItemModel *itemModel in array) {
        
        if (itemModel.group) {
            
        }
        
    }
}

- (void)fileManagerForItemInfo
{
    NSString *document = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    
    NSString *filePath = [document stringByAppendingPathComponent:@"home"];
    
    NSFileManager *FM = [NSFileManager defaultManager];
    
    if (![FM fileExistsAtPath:filePath]) {
        NSError *error;
        [FM createDirectoryAtPath:filePath withIntermediateDirectories:YES attributes:nil error:&error];
        
        if (error) {
            NSLog(@"创建文件夹失败！");
        }
    }
    // itemList
    NSString *itemPath = [filePath stringByAppendingPathComponent:@"itemList.plist"];
    
    NSArray *array = [NSKeyedUnarchiver unarchiveObjectWithFile:itemPath];
    
    if (array) {
        
    }
    
}


@end

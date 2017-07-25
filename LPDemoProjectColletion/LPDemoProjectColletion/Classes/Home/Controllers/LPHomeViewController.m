//
//  LPHomeViewController.m
//  LPDemoProjectColletion
//
//  Created by lizhaopeng on 2017/7/19.
//  Copyright © 2017年 LP. All rights reserved.
//

#import "LPHomeViewController.h"

#import "LPFPSLabel.h"

#import "LPHomeScrollView.h"

@interface LPHomeViewController ()

@end

@implementation LPHomeViewController

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self basicSet];
    
    [self buildMainUI];
    
    [self createScrollView];
    
}

/**
 *基础设置
 */
- (void)basicSet
{
    
//    LPFPSLabel *_fps = [LPFPSLabel new];
////    [_fps sizeToFit];
//    _fps.center = self.view.center;
//    [self.view addSubview:_fps];
    
}
/**
  搭建主界面
 */
- (void)buildMainUI
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    
    imageView.contentMode = UIViewContentModeScaleToFill;
    
    imageView.image = [UIImage imageNamed:@"星系"];
    
//    [self.view addSubview:imageView];
}

- (void)createScrollView
{
    LPHomeScrollView *scrollView = [[LPHomeScrollView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    [self.view addSubview:scrollView];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

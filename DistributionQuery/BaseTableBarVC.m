//
//  BaseTableBarVC.m
//  DistributionQuery
//
//  Created by Macx on 16/10/8.
//  Copyright © 2016年 Macx. All rights reserved.
//

#import "BaseTableBarVC.h"
#import "BaseNavigationController.h"
#define kClassKey   @"rootVCClassString"
#define kTitleKey   @"title"
#define kImgKey     @"imageName"
#define kSelImgKey  @"selectedImageName"
#define Global_tintColor [UIColor colorWithRed:255/255.0 green:(122 / 255.0) blue:0 alpha:1]
@interface BaseTableBarVC ()

@end

@implementation BaseTableBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *childItemsArray = @[
                                 @{kClassKey  : @"HomeVC",
                                   kTitleKey  : @"首页",
                                   kImgKey    : @"hp_hp",
                                   kSelImgKey : @"hp_hp1"},
                                 
                                 @{kClassKey  : @"ScanCodeVC",
                                   kTitleKey  : @"扫码",
                                   kImgKey    : @"hp_scan",
                                   kSelImgKey : @"hp_scan1"},
                                 
                                 @{kClassKey  : @"MyVC",
                                   kTitleKey  : @"我的",
                                   kImgKey    : @"hp_me",
                                   kSelImgKey : @"hp_me1"},
                                 
                                 ];
    
    

    [childItemsArray enumerateObjectsUsingBlock:^(NSDictionary *dict, NSUInteger idx, BOOL *stop) {
        UIViewController *vc = [NSClassFromString(dict[kClassKey]) new];
        vc.title = dict[kTitleKey];
        BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:vc];
        UITabBarItem *item = nav.tabBarItem;
        item.title = dict[kTitleKey];
        item.image = [UIImage imageNamed:dict[kImgKey]];
        item.selectedImage = [[UIImage imageNamed:dict[kSelImgKey]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [item setTitleTextAttributes:@{NSForegroundColorAttributeName : Global_tintColor} forState:UIControlStateSelected];
        [self addChildViewController:nav];
    }];

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

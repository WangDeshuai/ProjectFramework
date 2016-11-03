//
//  HomeVC.m
//  DistributionQuery
//
//  Created by Macx on 16/10/8.
//  Copyright © 2016年 Macx. All rights reserved.
//

#import "HomeVC.h"

@interface HomeVC ()
@property(nonatomic,retain)UIView * view1;
@end

@implementation HomeVC
-(void)viewWillAppear:(BOOL)animated
{
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     [self.navigationItem setTitle:@"配电查询"];
     [self CreatLunBoTu];
    [self CreatBtn];
}
#pragma mark --首页轮播图
-(void)CreatLunBoTu{
    
    _view1=[UIView new];
    _view1.backgroundColor=[UIColor redColor];
    [self.view sd_addSubviews:@[_view1]];
    _view1.sd_layout
    .leftSpaceToView(self.view,0)
    .topSpaceToView(self.view,0)
    .rightSpaceToView(self.view,0)
    .heightIs(200);//暂时改为200
    
    
    [Engine getFirstImagesuccess:^(NSDictionary *dic) {
        
    } error:^(NSError *error) {
        
    }];
}

#pragma mark --6个btn
-(void)CreatBtn{
    for (int i =0; i<6; i++) {
        UIButton * btn =[UIButton buttonWithType:UIButtonTypeCustom];
        btn.backgroundColor=[UIColor yellowColor];
        [self.view sd_addSubviews:@[btn]];
        //
        btn.sd_layout
        .leftSpaceToView(self.view,10+((ScreenWidth-30)/2+10)*(i/3))
        .topSpaceToView(_view1,10+(100+10)*(i%3))
        .widthIs((ScreenWidth-30)/2)
        .heightIs(100);
        
    }
    
    
    
}







@end

# ProjectFramework
如果下载下来项目运行出错，在Build Settings中找到Prefix Header，然后在里面更改.pch的文件路径\n
                              
     在BaseTableBarVC中，
     NSArray * childItemsArray =@[  @{kClassKey  : @"HomeVC",
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
                                 
                                 
    其中：
     kClassKey   代表类的名称
     kTitleKey   代表底部tabbar的标题
     kImgKey     代表tabbar未选中时的图片
     kSelImgKey  代表选中时的图片
     数组的个数，就代表底部tabbar的数量.
                                 
                                 
                                 
                                 
                                 

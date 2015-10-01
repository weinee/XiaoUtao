//
//  CustomMainTabBarController.h
//  XiaoUtao
//
//  Created by weinee on 15/9/30.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SideBarController.h"

@interface CustomMainTabBarController : UITabBarController<SideBarControllerDelegate>
@property(strong,nonatomic)SideBarController *sideBar;//侧导航栏
@property(strong,nonatomic)UITableView *tableView;
@end

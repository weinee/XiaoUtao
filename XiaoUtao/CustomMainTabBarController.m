//
//  CustomMainTabBarController.m
//  XiaoUtao
//
//  Created by weinee on 15/9/30.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#import "CustomMainTabBarController.h"
#import "BaseNavigationController.h"

#import "MeViewController.h"
#import "SHViewController.h"
#import "SBViewController.h"
#import "IMViewController.h"
#import <MMDrawerController.h>
#import <MMDrawerVisualState.h>
@interface CustomMainTabBarController ()

@end

@implementation CustomMainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
	//图片数组
	NSArray *imageList = @[[UIImage imageNamed:@"menuClose.png"],[UIImage imageNamed:@"menuUsers.png"], [UIImage imageNamed:@"menuChat"], [UIImage imageNamed:@"menuMap.png"]];
	//创建并将图片添加到sideBar上
	self.sideBar = [[SideBarController alloc] initWithImages:imageList];
	//代理
	self.sideBar.delegate = self;
	
	
	
//	创建
	BaseNavigationController *SHnvc = [[BaseNavigationController alloc] initWithRootViewController:[[SHViewController alloc] init]];
	BaseNavigationController *SBnvc = [[BaseNavigationController alloc] initWithRootViewController:[[SBViewController alloc] init]];
	BaseNavigationController *IMnvc = [[BaseNavigationController alloc] initWithRootViewController:[[IMViewController alloc] init]];
	
	self.viewControllers = @[SHnvc, SBnvc, IMnvc];
//	隐藏tabBar
	self.tabBar.hidden = YES;
	
//	添加自定义的边缘tabBar
	[self.sideBar insertMenuButtonOnView:self.view anPosition:CGPointMake(WIDTH-55, 30)];
}

#pragma mark - CDSideBarController delegate

- (void)menuButtonClicked:(NSInteger)index{
	self.selectedIndex = index;
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

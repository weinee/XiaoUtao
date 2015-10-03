//
//  RootDrawerController.m
//  XiaoUtao
//
//  Created by weinee on 15/10/1.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#import "RootDrawerController.h"
#import "RegistShop.h"
#import "BaseNavigationController.h"
#import "CustomMainTabBarController.h"

#import "MeViewController.h"
#import "SHViewController.h"
#import "SMViewController.h"
#import "SBViewController.h"
#import "IMViewController.h"
#import <MMDrawerController.h>
#import <MMDrawerVisualState.h>
@interface RootDrawerController ()

@end

@implementation RootDrawerController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor clearColor];
//	设置左边视图和中心视图
	self.leftDrawerViewController = [[MeViewController alloc] init];
	self.centerViewController = [[CustomMainTabBarController alloc] init];
	
//	设置左右显示的宽度
	[self setMaximumLeftDrawerWidth:180.0];
	
//	设置手势的作用区域
	[self setOpenDrawerGestureModeMask:MMOpenDrawerGestureModePanningNavigationBar|MMOpenDrawerGestureModeBezelPanningCenterView];
	[self setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
	
//设置动画的回掉函数
	[self setDrawerVisualStateBlock:^(MMDrawerController *drawerController, MMDrawerSide drawerSide, CGFloat percentVisible) {
		MMDrawerControllerDrawerVisualStateBlock block;
		block = [MMDrawerVisualState swingingDoorVisualStateBlock];
		if (block) {
			block(drawerController, drawerSide, percentVisible);
		}
	}];
	

//	[self
//	 setDrawerVisualStateBlock:^(MMDrawerController *drawerController, MMDrawerSide drawerSide, CGFloat percentVisible) {
//		 MMDrawerControllerDrawerVisualStateBlock block;
//		 block = [[MMExampleDrawerVisualStateManager sharedManager]
//				  drawerVisualStateBlockForDrawerSide:drawerSide];
//		 if(block){
//			 block(drawerController, drawerSide, percentVisible);
//		 }
//	 }];
	
	
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

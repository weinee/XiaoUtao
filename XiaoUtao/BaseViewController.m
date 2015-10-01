//
//  BaseViewController.m
//  XiaoUtao
//
//  Created by weinee on 15/9/30.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#import "BaseViewController.h"
#import <UIViewController+MMDrawerController.h>
@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	
//	设置头像， 作为一个按钮
	UIImage* img=[UIImage imageNamed:@"me"];
	UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
	btn.frame =CGRectMake(10, -4, 43, 43);
	[btn setBackgroundImage:img forState:UIControlStateNormal];
	[btn addTarget: self action: @selector(leftButtonClick:) forControlEvents: UIControlEventTouchUpInside];
	[self.navigationController.navigationBar addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -ButtonClickAction
- (void)leftButtonClick:(UIButton *)btn
{
	//调用菜单控制器打开左侧视图的方法(如果当前状态是打开状态，它执行关闭事件)
//	viewcontroller的类目方法
	[self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
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

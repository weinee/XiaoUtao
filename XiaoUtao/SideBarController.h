//
//  SideBarController.h
//  SideBar
//
//  Created by 李春波 on 15/9/25.
//  Copyright (c) 2015年 李春波. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
//协议
@protocol SideBarControllerDelegate <NSObject>

-(void)menuButtonClicked:(NSInteger)index;

@end
@interface SideBarController : NSObject

@property(strong,nonatomic) UIView *backgroundMenuVIew;//菜单背景视图
@property(strong,nonatomic) UIButton *menuButton;//菜单按钮
@property(strong,nonatomic) NSMutableArray *buttonList;//按钮列表数组

@property(strong,nonatomic) UIColor *menuColor;//菜单栏颜色
@property(nonatomic) BOOL isOpen;//菜单栏是否打开

@property(strong,nonatomic) id<SideBarControllerDelegate>delegate;//定义代理

-(SideBarController *)initWithImages:(NSArray *)images;//声明图片数组
-(void)insertMenuButtonOnView:(UIView *)view anPosition:(CGPoint)position;//将菜单按钮确定位置添加到视图上


@end

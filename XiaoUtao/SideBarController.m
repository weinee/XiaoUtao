//
//  SideBarController.m
//  SideBar
//
//  Created by 李春波 on 15/9/25.
//  Copyright (c) 2015年 李春波. All rights reserved.
//

#import "SideBarController.h"

@implementation SideBarController

#pragma mark Init
-(SideBarController *)initWithImages:(NSArray *)images
{
    //定义菜单按钮
    self.menuButton = [UIButton buttonWithType:UIButtonTypeCustom];//不加背景
    self.menuButton.frame = CGRectMake(0, 0, 40, 40);
    [self.menuButton setImage:[UIImage imageNamed:@"menuIcon"] forState:UIControlStateNormal];
    //添加事件
    [self.menuButton addTarget:self action:@selector(showMenu) forControlEvents:UIControlEventTouchUpInside];
    
    self.backgroundMenuVIew = [[UIView alloc] init];
//    self.menuColor = [UIColor whiteColor];//菜单栏颜色
    self.buttonList = [[NSMutableArray alloc] initWithCapacity:images.count];
    
    //为按钮数组添加图片
    int index = 0;
    for (UIImage *image in images) {
        {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            [button setImage:image forState:UIControlStateNormal];
            button.frame = CGRectMake(10, 50 + (80 * index), 50, 50);
            button.tag = index;
            [button addTarget:self action:@selector(onMenuButtonClick:) forControlEvents:UIControlEventTouchUpInside];
            [self.buttonList addObject:button];
        }
        ++index;
    }
    
    return self;
}

//将菜单按钮确定位置添加到视图上
-(void)insertMenuButtonOnView:(UIView *)view anPosition:(CGPoint)position
{
    self.menuButton.frame = CGRectMake(position.x, position.y-10, self.menuButton.frame.size.width, self.menuButton.frame.size.height);
//    [self.menuButton  removeFromSuperview];
    [view addSubview:self.menuButton];
//	添加滑动手势，显示菜单
	UISwipeGestureRecognizer *leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(showMenu)];
	leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
	[view addGestureRecognizer:leftSwipe];
	
    //添加单击手势, 隐藏按钮菜单
    UITapGestureRecognizer *singleTap =[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissMenu)];
    [view addGestureRecognizer:singleTap];
    
    for (UIButton *button in self.buttonList) {
        [self.backgroundMenuVIew addSubview:button];
    }
//    设置按钮菜单的大小和位置
    self.backgroundMenuVIew.frame = CGRectMake(view.frame.size.width, 64, 70, view.frame.size.height-64);
    self.backgroundMenuVIew.backgroundColor = [UIColor colorWithRed:0.5 green:1 blue:1 alpha:0.5f];
    [view addSubview:self.backgroundMenuVIew];
}
//隐藏菜单
-(void)dismissMenu
{
    if (self.isOpen) {
        self.isOpen = !self.isOpen;
        [self performDismissAnimation];
    }
}

-(void)showMenu
{
    if (!self.isOpen) {
        self.isOpen = !self.isOpen;
        [self performSelectorInBackground:@selector(performOpenAnimation) withObject:nil];
    }
}
-(void)onMenuButtonClick:(UIButton*)button
{
    if ([self.delegate respondsToSelector:@selector(menuButtonClicked:)]) {
        [self.delegate menuButtonClicked:button.tag];
        [self dismissMenuWithSelection:button];
    }
}

#pragma mark Menu button action
-(void)dismissMenuWithSelection:(UIButton *)button
{
    [UIView animateWithDuration:0.3f delay:0.0f usingSpringWithDamping:.2f initialSpringVelocity:10.0f options:0 animations:^{
        button.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.2, 1.2);
    } completion:^(BOOL finished) {
        [self dismissMenu];
    }];
}

#pragma mark - Animations
-(void)performDismissAnimation
{
    [UIView animateWithDuration:0.4 animations:^{
        self.menuButton.alpha = 1.0f;
        self.menuButton.transform =CGAffineTransformTranslate(CGAffineTransformIdentity, 0, 0);
        self.backgroundMenuVIew.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 0, 0);
    }];
}

-(void)performOpenAnimation
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [UIView animateWithDuration:0.4 animations:^{
            self.menuButton.alpha= 1.0f;
//			根据菜单宽度进行偏移 90->70
            self.menuButton.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, -70, 0);
            self.backgroundMenuVIew.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, -70, 0);
        }];
    });
    for (UIButton *button in self.buttonList) {
        [NSThread sleepForTimeInterval:0.02f];
        dispatch_async(dispatch_get_main_queue(), ^{
            button.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 20, 0);
            [UIView animateWithDuration:0.3f delay:0.3f usingSpringWithDamping:.3f initialSpringVelocity:10.f options:0 animations:^{
                button.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 0, 0);
            } completion:^(BOOL finished) {
            }];
        });
    }
}










@end

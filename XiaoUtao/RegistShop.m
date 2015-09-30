//
//  RegistShop.m
//  XiaoUtao
//
//  Created by 费惠 on 15/9/29.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#import "RegistShop.h"

@interface RegistShop ()

@end

@implementation RegistShop

- (void)viewDidLoad {
    [super viewDidLoad];
    
}



//创建子视图
-(void)initViews
{
    
    //创建头像图视图
    _headshot=[[UIImageView alloc] initWithFrame:CGRectMake(WIDTH/2-30, 120, 60, 80)];
    //设置默认图片
    _headshot.image=[UIImage imageNamed:@"headshot_default.png"];
    //设置圆角
    _headshot.layer.cornerRadius=5;
    //设置裁剪
    _headshot.layer.masksToBounds=YES;
    //设置描边
    _headshot.layer.borderColor=[UIColor grayColor].CGColor;
    _headshot.layer.borderWidth=4;
    [self.view addSubview:_headshot];
    
    //创建提示标签
    _labTip=[[UILabel alloc] initWithFrame:CGRectMake(WIDTH/2-10, 90, 150, 40)];
    _labTip.text=@"设置你的U店铺LOGO";
    _labTip.textColor=[UIColor grayColor];
    [self.view addSubview:_labTip];
    
    //创建视图
    _txtView=[[UIView alloc] initWithFrame:CGRectMake(0, 150, WIDTH, 80)];
    _txtView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:_txtView];
    
    //创建文本框
    _shopName=[[UITextField alloc] initWithFrame:CGRectMake(0, 0, WIDTH, 39)];
    _shopName.placeholder=@"你的U店铺名称";
    [_txtView addSubview:_shopName];
    
    //下划线
    UIView *underline=[[UIView alloc] initWithFrame:CGRectMake(2, 39, WIDTH-4, 2)];
    underline.backgroundColor=[UIColor grayColor];
    [_txtView addSubview:underline];
    
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

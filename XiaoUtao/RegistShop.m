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
    self.view.backgroundColor=[UIColor colorWithRed:120/255.0 green:230/255.0 blue:295/255.0 alpha:0.6];
    [self initViews];
}

//创建子视图
-(void)initViews
{
    //创建头像图视图
    _headshot=[[UIImageView alloc] initWithFrame:CGRectMake(WIDTH/2-60, 120, 100, 120)];
    //设置圆角
    _headshot.layer.cornerRadius=5;
    //设置裁剪
    _headshot.layer.masksToBounds=YES;
    //设置描边
    _headshot.layer.borderColor=[UIColor whiteColor].CGColor;
    _headshot.layer.borderWidth=4;
    [self.view addSubview:_headshot];
    //头像视图内部放照片
    UIImageView *photoImageView=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 120)];
    photoImageView.image=[UIImage imageNamed:@"head_photo"];
    [_headshot addSubview:photoImageView];
    
    //创建相机按钮
    _btnCinema=[UIButton buttonWithType:UIButtonTypeSystem];
    _btnCinema.frame=CGRectMake(_headshot.right-50, _headshot.bottom-50, 75, 70);
    [_btnCinema addTarget:self action:@selector(addShopHeadshot) forControlEvents:UIControlEventTouchUpInside];
    [_btnCinema setBackgroundImage:[UIImage imageNamed:@"cinema"] forState:UIControlStateNormal];
    [self.view addSubview:_btnCinema];
    
    //创建提示标签
    _labTip=[[UILabel alloc] initWithFrame:CGRectMake(WIDTH/2-90, _headshot.bottom+20, 200, 40)];
    _labTip.text=@"设置你的U店铺LOGO";
    _labTip.textColor=[UIColor colorWithRed:195/255 green:155/255 blue:155/255 alpha:0.5];
    [self.view addSubview:_labTip];
    
    //创建视图
    _txtView=[[UIView alloc] initWithFrame:CGRectMake(0, _labTip.bottom+5, WIDTH, 80)];
    _txtView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:_txtView];
    
    //创建文本框--店铺名
    _shopName=[[UITextField alloc] initWithFrame:CGRectMake(0, 0, WIDTH, 39.5)];
    _shopName.tag=1;
    _shopName.clearButtonMode=UITextFieldViewModeAlways;
    _shopName.placeholder=@"  你的U店铺名称";
    [_txtView addSubview:_shopName];
    
    //下划线
    UIView *underline=[[UIView alloc] initWithFrame:CGRectMake(5, 39.5, WIDTH-10, 0.6)];
    underline.backgroundColor=[UIColor grayColor];
    [_txtView addSubview:underline];
    
    //创建文本框--店铺描述
    _shopDescription=[[UITextField alloc] initWithFrame:CGRectMake(0, 40.5, WIDTH, 39.5)];
    _shopDescription.placeholder=@"  描述一下你的U店铺";
    _shopDescription.clearButtonMode=UITextFieldViewModeAlways;
    [_txtView addSubview: _shopDescription];
    
    //创建按钮--开店
    _btnRunForFree=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btnRunForFree.frame=CGRectMake(10, _txtView.bottom+10, WIDTH-20, 40);
    _btnRunForFree.backgroundColor=[UIColor grayColor];
    [_btnRunForFree setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnRunForFree setTitle:@"开店铺" forState:UIControlStateNormal];
    [_btnRunForFree addTarget:self action:@selector(RunForFree) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btnRunForFree];
}
#pragma mark--UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if ([textField isFirstResponder]) {
        [textField resignFirstResponder];
    }
    if (textField.tag==1) {
        //判断
        //1 从数据库中获取
        
//        self.modelShop=[[Shop alloc] init];
//        self.modelShop.
        
    }
    return YES;
}
-(void)addShopHeadshot
{
    
}
//开店按钮的操作
-(void)RunForFree
{
    
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

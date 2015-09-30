//
//  RegistShop.h
//  XiaoUtao
//
//  Created by 费惠 on 15/9/29.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface RegistShop : UIViewController<UITextFieldDelegate>
{
    UIImageView *_headshot;//头像视图
    UIButton *_btnCinema;//相机按钮
    UIActionSheet *_actionSheet;//拍照、从相册中选取
    UILabel *_labTip;//提示语
    UIView *_txtView;
    UITextField *_shopName;//店铺名
    UITextField *_shopDescription;//店铺描述
    UIButton *_btnRunForFree;//开店按钮
}
@end

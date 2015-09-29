//
//  Shop.h
//  XiaoUtao
//
//  Created by weinee on 15/9/28.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BmobSDK/Bmob.h>
#import "User.h"
@interface Shop : BmobObject

@property(copy, nonatomic)NSString *shopName;
//每天的营业时间
@property(copy, nonatomic)NSString *shopOpenTime;
//小店公告
@property(copy, nonatomic)NSString *shopNotice;
//小店开业状态
@property(strong, nonatomic)NSNumber *shopStatus;
//小店logo
@property(strong, nonatomic)BmobFile *shopPicture;
//小店详细地址
@property(copy, nonatomic)NSString *shopAdress;
//点赞的数量
@property(strong, nonatomic)NSNumber *shopFavour;

//关联
//管理者，开店的用户
@property(strong, nonatomic)User *manager;
//关注的用户
@property(strong, nonatomic)BmobRelation *focus;
@end

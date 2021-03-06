//
//  User.h
//  BmobTest
//
//  Created by weinee on 15/9/28.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BmobSDK/Bmob.h>
#import "School.h"
@interface User : BmobUser
@property(copy, nonatomic)NSString *userSex;
//使用数字类
@property(strong, nonatomic)NSNumber *userAge;
//头像，url
@property(copy, nonatomic)NSString *avatar;
//是否开店
@property(assign, nonatomic)BOOL *isShoper;
//地理位置,经纬度
@property(strong, nonatomic)BmobGeoPoint *location;
//用户设备类型
@property(copy, nonatomic)NSString *deviceType;

//用户所在学校
@property(strong, nonatomic)School *userSchool;
@end

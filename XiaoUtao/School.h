//
//  School.h
//  XiaoUtao
//
//  Created by weinee on 15/10/3.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BmobSDK/Bmob.h>
@interface School : BmobObject
@property(copy, nonatomic)NSString *schoolName;
@property(copy, nonatomic)NSString *schoolProvince;
@property(copy, nonatomic)NSString *schoolCity;
@property(strong, nonatomic)BmobGeoPoint *schoolLocation;
@end

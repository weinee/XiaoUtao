//
//  Goods.h
//  XiaoUtao
//
//  Created by weinee on 15/9/28.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BmobSDK/Bmob.h>
#import "Shop.h"
@interface Goods : BmobObject
@property(copy, nonatomic)NSString *goodsName;
@property(strong, nonatomic)NSNumber *goodsPrice;
//库存
@property(strong, nonatomic)NSNumber *goodsStock;
//商品图片
@property(strong, nonatomic)BmobFile *goodsPicture;
//商品介绍
@property(copy, nonatomic)NSString *goodsInfo;
//商品类型
@property(strong, nonatomic)NSNumber *goodsType;

//关联
//出售本商品的小店
@property(strong, nonatomic)Shop *sale;
@end

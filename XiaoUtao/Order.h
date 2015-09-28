//
//  Order.h
//  XiaoUtao
//
//  Created by weinee on 15/9/28.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Goods.h"
@interface Order : NSObject
//订单状态
@property(strong, nonatomic)NSNumber *orderStatus;
//定单中的商品数量
@property(strong, nonatomic)NSNumber *goodsNumber;

//关联
//买家
@property(strong, nonatomic)User *buyer;
//商品
@property(strong, nonatomic)Goods *goods;
@end

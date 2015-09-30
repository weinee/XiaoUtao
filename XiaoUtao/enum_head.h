//
//  enum.h
//  XiaoUtao
//
//  Created by 费惠 on 15/9/29.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#ifndef XiaoUtao_enum_h
#define XiaoUtao_enum_h


#define WIDTH self.view.frame.size.width
#define HEIGHT self.view.frame.size.height
//帖子商品种类
enum PostGoodsType
{
    PostGoodsTypeVehicles=0,
    PostGoodsTypePhone,
    PostGoodsTypeComputer,
    PostGoodsTypeDigital,
    PostGoodsTypeElectrical,
    PostGoodsTypeDigitalAccessories,
    PostGoodsTypeExercise,
    PostGoodsTypeClothesUmbrellaCap,
    PostGoodsTypeBook,
    PostGoodsTypeLiveEntertainment,
    PostGoodsTypeOthers
};
typedef enum PostGoodsType PostGoodsType;
static const NSArray *__PostGoodsType;
#define cPostGoodsTypeGet (__PostGoodsType==nil?__PostGoodsType=[[NSArray alloc]initWithObjects:\
@"校园代步",\
@"手机",\
@"电脑",\
@"数码",\
@"电器",\
@"数码配件",\
@"运动健身",\
@"衣物伞帽",\
@"图书教材",\
@"生活娱乐",\
@"其他",nil]:__PostGoodsType)
#define cPostGoodsTypeString(type) ([cPostGoodsTypeGet objectAtIndex:type])
#define cPostGoodsTypeEnum(string) ([cPostGoodsTypeGet indexOfObject:string])

//帖子种类
enum PostType
{
    PostTypeBuy=0,
    PostTypeSell
};
typedef enum PostType PostType;
static const NSArray *__PostType;
#define cPostTypeGet (__PostType==nil?__PostType=[[NSArray alloc]initWithObjects:\
@"购买",\
@"出售",nil]:__PostType)
#define cPostTypeString(type) ([cPostTypeGet objectAtIndex:type])
#define cPostTypeEnum(string) ([cPostTypeGet indexOfObject:string])

//帖子状态
enum PostStatus
{
    PostStatusDidSold=0,
    PostStatusUnsold
};
typedef enum PostStatus PostStatus;
static const NSArray *__PostStatus;
#define cPostStatusGet (__PostStatus==nil?__PostStatus=[[NSArray alloc]initWithObjects:\
@"已出售",\
@"未出售",nil]:__PostStatus)
#define cPostStatusString(type) ([cPostStatusGet objectAtIndex:type])
#define cPostStatusEnum(string) ([cPostStatusGet indexOfObject:string])

//二手物品的新旧程度
enum GoodsDegree
{
    GoodsDegreeFive=0,
    GoodsDegreeSix,
    GoodsDegreeSeven,
    GoodsDegreeEight,
    GoodsDegreeNine,
    GoodsDegreeTen
};
typedef enum GoodsDegree GoodsDegree;
static const NSArray *__GoodsDegree;
#define cGoodsDegreeGet (__GoodsDegree==nil?__GoodsDegree=[[NSArray alloc]initWithObjects:\
@"五成新",\
@"六成新",\
@"七成新",\
@"八成新",\
@"九成新",\
@"全新",nil]:__GoodsDegree)
#define cGoodsDegreeString(type) ([cGoodsDegreeGet objectAtIndex:type])
#define cGoodsDegreeEnum(string) ([cPostStatusGet indexOfObject:string])

//店铺状态
enum ShopStatus
{
    ShopStatusOpening=0,
    ShopStatusClosed
};
typedef enum ShopStatus ShopStatus;
static const NSArray *__ShopStatus;
#define cShopStatusGet (__ShopStatus==nil?__ShopStatus=[[NSArray alloc]initWithObjects:\
@"营业中",\
@"未营业",nil]:__ShopStatus)
#define cShopStatusString(type) ([cShopStatusGet objectAtIndex:type])
#define cShopStatusEnum(string) ([cShopStatusGet indexOfObject:string])

//店铺商品种类
enum GoodsType
{
    GoodsTypeFoot=0,
    GoodsTypeDrink,
    GoodsTypePlay,
    GoodsTypeSupply
};
typedef enum GoodsType GoodsType;
static const NSArray *__GoodsType;
#define cGoodsTypeGet (__GoodsType==nil?__GoodsType=[[NSArray alloc]initWithObjects:\
@"吃",\
@"喝",\
@"玩",\
@"用",nil]:__GoodsType)
#define cGoodsTypeString(type) ([cGoodsTypeGet objectAtIndex:type])
#define cGoodsTypeEnum(string) ([cGoodsTypeGet indexOfObject:string])

//订单状态
enum OrderStatus
{
    OrderStatusUnpay=0,
    OrderStatusDidPay,
    OrderStatusCancel,
    OrderStatusFinsih
};
typedef enum OrderStatus OrderStatus;
static const NSArray *__OrderStatus;
#define cOrderStatusGet (__OrderStatus==nil?__OrderStatus=[[NSArray alloc]initWithObjects:\
@"未付款",\
@"已付款",\
@"取消",\
@"完成",nil]:__OrderStatus)
#define cOrderStatusString(type) ([cOrderStatusGet objectAtIndex:])
#define cOrderStatusEnum(string) ([cOrderStatusGet indexOfObject:string])


#endif

//
//  enum.h
//  XiaoUtao
//
//  Created by 费惠 on 15/9/29.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#ifndef XiaoUtao_enum_h
#define XiaoUtao_enum_h
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
const NSArray *___PostGoodsType;
#define cPostGoodsTypeGet (___PostGoodsType==nil?___PostGoodsType=[[NSArray alloc]initWithObjects:\
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
@"其他",nil]:___PostGoodsType)
#define cPostGoodsTypeString(type) ([cPostGoodsTypeGet objectAtIndex:type])
#define cPostGoodsTypeEnum(string) ([cPostGoodsTypeGet indexOfObject:string])

//帖子种类
enum PostType
{
    PostTypeBuy=0,
    PostTypeSell
};
typedef enum PostType PostType;
const NSArray *___PostType;
#define cPostTypeGet (___PostType==nil?___PostType=[[NSArray alloc]initWithObjects:\
@"购买",\
@"出售",nil]:___PostType)
#define cPostTypeString(type) ([cPostTypeGet objectAtIndex:type])
#define cPostTypeEnum(string) ([cPostTypeGet indexOfObject:string])

//帖子状态
enum PostStatus
{
    PostStatusDidSold=0,
    PostStatusUnsold
};
typedef enum PostStatus PostStatus;
const NSArray *___PostStatus;
#define cPostStatusGet (___PostStatus==nil?___PostStatus=[[NSArray alloc]initWithObjects:\
@"已出售",\
@"未出售",nil]:___PostStatus)
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
const NSArray *___GoodsDegree;
#define cGoodsDegreeGet (___GoodsDegree==nil?___GoodsDegree=[[NSArray alloc]initWithObjects:\
@"五成新",\
@"六成新",\
@"七成新",\
@"八成新",\
@"九成新",\
@"全新",nil]:___GoodsDegree)
#define cGoodsDegreeString(type) ([cGoodsDegreeGet objectAtIndex:type])
#define cGoodsDegreeEnum(string) ([cPostStatusGet indexOfObject:string])

//店铺状态
enum ShopStatus
{
    ShopStatusOpening=0,
    ShopStatusClosed
};
typedef enum ShopStatus ShopStatus;
const NSArray *___ShopStatus;
#define cShopStatusGet (___ShopStatus==nil?___ShopStatus=[[NSArray alloc]initWithObjects:\
@"营业中",\
@"未营业",nil]:___ShopStatus)
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
const NSArray *___GoodsType;
#define cGoodsTypeGet (___GoodsType==nil?___GoodsType=[[NSArray alloc]initWithObjects:\
@"吃",\
@"喝",\
@"玩",\
@"用",nil]:___GoodsType)
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
const NSArray *___OrderStatus;
#define cOrderStatusGet (___OrderStatus==nil?___OrderStatus=[[NSArray alloc]initWithObjects:\
@"未付款",\
@"已付款",\
@"取消",\
@"完成",nil]:___OrderStatus)
#define cOrderStatusString(type) ([cOrderStatusGet objectAtIndex:])
#define cOrderStatusEnum(string) ([cOrderStatusGet indexOfObject:string])


#endif

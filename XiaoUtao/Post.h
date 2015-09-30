//
//  Post.h
//  BmobTest
//
//  Created by weinee on 15/9/28.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BmobSDK/Bmob.h>
#import "User.h"

@interface Post : BmobObject
@property(copy, nonatomic)NSString *postTitle;
//帖子内容
@property(copy, nonatomic)NSString *postContent;
//帖子类型，出售还是收购
@property(strong, nonatomic)NSNumber *postType;

@property(strong, nonatomic)NSNumber *goodsPrice;
//出售物品数量
@property(strong, nonatomic)NSNumber *goodsNumber;
//帖子图片
@property(strong, nonatomic)NSArray *goodsPictures;
//帖子状态
@property(strong, nonatomic)NSNumber *postStatus;

//物品类型
@property(strong, nonatomic)NSNumber *postGoodsType;
//商品新旧程度
@property(strong, nonatomic)NSNumber *goodsDegree;

//关联
//帖子作者
@property(strong, nonatomic)User *author;
//收藏
@property(strong, nonatomic)BmobRelation *collect;
@end

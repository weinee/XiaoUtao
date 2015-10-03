//
//  ViewController.m
//  XiaoUtao
//
//  Created by weinee on 15/9/28.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#import "ViewController.h"
#import "Post.h"
#import "User.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.view.backgroundColor = [UIColor redColor];
	/*
	 //	插入用户
	 User *user = [[User alloc] initWithClassName:@"_User"];
	 user.username = @"test3";
	 user.password = @"123456";
	 user.email = @"2355208@163.com";
	 //	user.age = @24;
	 //	需要用set方法
	 [user setObject:@22 forKey:@"age"];
	 //	user.sex = @"";
	 //	user.isShoper = @1;
	 [user setObject:@"男" forKey:@"sex"];
	 
	 //	BOOL值的设置
	 [user setObject:@YES forKey:@"isShoper"];
	 //	注册新用户
	 [user signUpInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
		if (isSuccessful) {
	 NSLog(@"success");
		}
		else{
	 NSLog(@"%@", error);
		}
	 }];
	 */
	
 //	添加一个 帖子
//	Post *post = [[Post alloc] initWithClassName:@"post"];
//	post.postTitle = @"post1";
//	post.postContent = @"post1 test";
//	post.postType = @1;
//	post.goodsPrice = @13.2;
//	post.goodsNumber = @2;
//	[post sub_saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
//		if (isSuccessful) {
//			NSLog(@"success");
//		} else {
//			NSLog(@"%@", error);
//		}
//	}];
	
	
//	修改帖子作者
//	BmobQuery *pQuery = [BmobQuery queryWithClassName:@"post"];
//	[pQuery getObjectInBackgroundWithId:@"c4bdde7d43" block:^(BmobObject *object, NSError *error) {
//		if (error) {
//			NSLog(@"%@", error);
//		}
//		else if(object){
//			User *user = [User objectWithoutDatatWithClassName:@"_User" objectId:@"9621a6532a"];
//			[object setObject:user forKey:@"author"];
//		}
//	}];
//	
//    
//    NSLog(@"%@",cPostStatusGet);
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end

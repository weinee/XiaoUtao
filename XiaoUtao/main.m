//
//  main.m
//  XiaoUtao
//
//  Created by weinee on 15/9/28.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <BmobSDK/bmob.h>
int main(int argc, char * argv[]) {
	@autoreleasepool {
		[Bmob registerWithAppKey:@"18aff5b4e6cd5c4f56a3ebaea261e0a3"];
	    return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
	}
}

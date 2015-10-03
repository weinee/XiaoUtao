//
//  IMViewController.m
//  XiaoUtao
//
//  Created by weinee on 15/9/30.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#import "IMViewController.h"
#import <BmobProFile.h>
#import <SDWebImage/UIImageView+WebCache.h>
@interface IMViewController ()

@end

@implementation IMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor blueColor];
	self.navigationItem.title = @"通信";
	
//	NSString *path = [[NSBundle mainBundle] pathForResource:@"me.png" ofType:nil];
//	[BmobProFile uploadFileWithPath:path block:^(BOOL isSuccessful, NSError *error, NSString *filename, NSString *url, BmobFile *file) {
//		if (!isSuccessful) {
//			NSLog(@"%@", error);
//		}
//		else{
//			NSLog(@"fileName = %@, url = %@, BmobFile = %@", filename, url, file);
//		}
//	} progress:^(CGFloat progress) {
//		NSLog(@"--%lf", progress);
//	}];
	
//	UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
//	[iv sd_setImageWithURL:[NSURL URLWithString:@"http://file.bmob.cn/M02/E1/01/oYYBAFYN6luAAGAwAAAPyg2WwvQ966.png"] placeholderImage:nil];
//	[self.view addSubview:iv];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

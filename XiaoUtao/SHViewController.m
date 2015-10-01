//
//  SHViewController.m
//  XiaoUtao
//
//  Created by weinee on 15/9/30.
//  Copyright (c) 2015年 weinee. All rights reserved.
//

#import "SHViewController.h"

@interface SHViewController ()

@end

@implementation SHViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor redColor];
	self.navigationItem.title = @"二手货";
	
	UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 30)];
	label.text = @"二手货";
	[self.view addSubview:label];
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

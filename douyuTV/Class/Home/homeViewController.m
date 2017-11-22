//
//  homeViewController.m
//  douyuTV
//
//  Created by Mac on 17/11/22.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import "homeViewController.h"

@interface homeViewController ()

@end

@implementation homeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.navigationItem.title=@"我的";
    UITabBarItem* homeTabbarItem=[[UITabBarItem alloc]initWithTitle:@"我的" image:[UIImage imageNamed:@"btn_user_normal@2x.png"] selectedImage:[[UIImage imageNamed:@"btn_user_selected@2x.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    self.tabBarItem=homeTabbarItem;
    
    
    // Do any additional setup after loading the view.
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

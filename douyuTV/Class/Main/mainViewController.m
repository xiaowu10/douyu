//
//  mainViewController.m
//  douyuTV
//
//  Created by Mac on 17/11/22.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import "mainViewController.h"

@interface mainViewController ()

@end

@implementation mainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    UITabBarItem* mainTabbarItem=[[UITabBarItem alloc]initWithTitle:@"首页" image:[UIImage imageNamed:@"btn_home_normal@2x.png"] selectedImage:[[UIImage imageNamed:@"btn_home_selected@2x.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    self.tabBarItem=mainTabbarItem;
    
    UIBarButtonItem* mainLeftBar=[[UIBarButtonItem alloc]initWithImage:[[UIImage imageNamed:@"logo@2x.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStyleDone target:nil action:nil];
    self.navigationItem.leftBarButtonItem=mainLeftBar;
    
    
    UIBarButtonItem* mainRightBarBtn1=[[UIBarButtonItem alloc]initWithImage:[[UIImage imageNamed:@"Image_scan@2x.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStyleDone target:nil action:nil];
    UIBarButtonItem* mainRightBarBtn2=[[UIBarButtonItem alloc]initWithImage:[[UIImage imageNamed:@"btn_search@2x.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStyleDone target:nil action:nil];
    UIBarButtonItem* mainRightBarBtn3=[[UIBarButtonItem alloc]initWithImage:[[UIImage imageNamed:@"image_my_history@2x.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStyleDone target:nil action:nil];
    
    self.navigationItem.rightBarButtonItems=@[mainRightBarBtn1,mainRightBarBtn2,mainRightBarBtn3];
    
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

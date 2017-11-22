//
//  liveViewController.m
//  douyuTV
//
//  Created by Mac on 17/11/22.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import "liveViewController.h"

@interface liveViewController ()

@end

@implementation liveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.view.backgroundColor=[UIColor whiteColor];
    self.navigationItem.title=@"直播";
    UITabBarItem* liveTabbarItem=[[UITabBarItem alloc]initWithTitle:@"直播" image:[UIImage imageNamed:@"btn_column_normal@2x.png"] selectedImage:[[UIImage imageNamed:@"btn_column_selected@2x.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    self.tabBarItem=liveTabbarItem;
    
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

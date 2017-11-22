//
//  followViewController.m
//  douyuTV
//
//  Created by Mac on 17/11/22.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import "followViewController.h"

@interface followViewController ()

@end

@implementation followViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.navigationItem.title=@"关注";
    UITabBarItem* followTabbarItem=[[UITabBarItem alloc]initWithTitle:@"关注" image:[UIImage imageNamed:@"btn_live_normal@2x.png"] selectedImage:[[UIImage imageNamed:@"btn_live_selected@2x.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    self.tabBarItem=followTabbarItem;
    
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

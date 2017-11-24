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
    
    
    //设置顶部视图
    self.topView=[[UIView alloc]initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, 40)];
    //topView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:self.topView];
    
    NSArray* arr=[NSArray arrayWithObjects:@"推荐",@"游戏",@"娱乐",@"疯玩", nil];
    for(int i=0;i<4;i++){
        UIButton* topBtn=[[UIButton alloc]initWithFrame:CGRectMake((_topView.bounds.size.width/4)*i,0, _topView.bounds.size.width/4, _topView.bounds.size.height-5)];
        [topBtn setTitle:arr[i] forState:UIControlStateNormal];
        topBtn.backgroundColor=[UIColor whiteColor];
        topBtn.tag=i;
        [topBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [topBtn addTarget:self action:@selector(touchBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_topView addSubview:topBtn];
        
        //设置滚动视图与topview间的线条
        if(topBtn.tag==1){
            self.centerLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 35, _topView.bounds.size.width/4, 5    )];
            self.centerLabel.backgroundColor=[UIColor blueColor];
            [_topView addSubview:self.centerLabel];
        }

    }
    
    //设置中间滚动视图
    _centreScrollView=[[UIScrollView alloc]init];
    _centreScrollView.frame=CGRectMake(0, 104, self.view.bounds.size.width, self.view.bounds.size.height-104);
    _centreScrollView.contentSize=CGSizeMake(self.view.bounds.size.width*4, self.view.bounds.size.height-104);
    _centreScrollView.backgroundColor=[UIColor yellowColor];
    //设置整页滚动
    _centreScrollView.pagingEnabled=YES;
    
    self.centreScrollView.delegate=self;
    
    [self.view addSubview:_centreScrollView];
    for(int i=0;i<4;i++){
        UIView* centreView=[[UIView alloc]initWithFrame:CGRectMake(_centreScrollView.bounds.size.width*i, 0, _centreScrollView.bounds.size.width, _centreScrollView.bounds.size.height)];
        centreView.tag=i;
        if(centreView.tag==0){
            centreView.backgroundColor=[UIColor redColor];
        }else if (centreView.tag==1){
            centreView.backgroundColor=[UIColor whiteColor];
        }else if(centreView.tag==2){
            centreView.backgroundColor=[UIColor grayColor];
        }else{
            centreView.backgroundColor=[UIColor blueColor];
        }
        [_centreScrollView addSubview:centreView];
    }
    
    
    // Do any additional setup after loading the view.
}

- (void)touchBtn:(UIButton*)btn
{
    if(btn.tag==0){
        _centerLabel.frame=CGRectMake(0, 35, btn.bounds.size.width, 5);
        CGPoint point= CGPointMake(self.view.bounds.size.width*btn.tag, 0);
        [_centreScrollView setContentOffset:point animated:YES];
    }else if(btn.tag==1){
        _centerLabel.frame=CGRectMake(btn.bounds.size.width*btn.tag, 35, btn.bounds.size.width, 5);
        CGPoint point= CGPointMake(self.view.bounds.size.width*btn.tag, 0);
        [_centreScrollView setContentOffset:point animated:YES];
    }else if (btn.tag==2){
        _centerLabel.frame=CGRectMake(btn.bounds.size.width*btn.tag, 35, btn.bounds.size.width, 5);
        CGPoint point= CGPointMake(self.view.bounds.size.width*btn.tag, 0);
        [_centreScrollView setContentOffset:point animated:YES];
    }else if(btn.tag==3){
        _centerLabel.frame=CGRectMake(btn.bounds.size.width*btn.tag, 35, btn.bounds.size.width, 5);
        CGPoint point= CGPointMake(self.view.bounds.size.width*btn.tag, 0);
        [_centreScrollView setContentOffset:point animated:YES];
    }
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    if(_centreScrollView.contentOffset.x==0){
        _centerLabel.frame=CGRectMake(_topView.bounds.size.width/4*0, 35, _topView.bounds.size.width/4, 5);
    }
    if(_centreScrollView.contentOffset.x==self.topView.bounds.size.width){
        _centerLabel.frame=CGRectMake(_topView.bounds.size.width/4*1, 35, _topView.bounds.size.width/4, 5);
    }
    if(_centreScrollView.contentOffset.x==self.topView.bounds.size.width*2){
        _centerLabel.frame=CGRectMake(_topView.bounds.size.width/4*2, 35, _topView.bounds.size.width/4, 5);
    }
    if(_centreScrollView.contentOffset.x==self.topView.bounds.size.width*3){
        _centerLabel.frame=CGRectMake(_topView.bounds.size.width/4*3, 35, _topView.bounds.size.width/4, 5);
    }
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

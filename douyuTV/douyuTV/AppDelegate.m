//
//  AppDelegate.m
//  douyuTV
//
//  Created by Mac on 17/11/10.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import "AppDelegate.h"
#import "toolViewController.h"
#import "mainViewController.h"
#import "homeViewController.h"
#import "followViewController.h"
#import "liveViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    mainViewController* mainVC=[[mainViewController alloc]init];
    liveViewController* liveVC=[[liveViewController alloc]init];
    homeViewController* homeVC=[[homeViewController alloc]init];
    followViewController* followVC=[[followViewController alloc]init];
    
    //要先调用viewdidlode方法将视图显示出来
    mainVC.view.backgroundColor=[UIColor whiteColor];
    liveVC.view.backgroundColor=[UIColor whiteColor];
    homeVC.view.backgroundColor=[UIColor whiteColor];
    followVC.view.backgroundColor=[UIColor whiteColor];
    
    UINavigationController* navMain=[[UINavigationController alloc]initWithRootViewController:mainVC];
    navMain.view.backgroundColor=[UIColor whiteColor];
    UINavigationController* navLive=[[UINavigationController alloc]initWithRootViewController:liveVC];
    navLive.view.backgroundColor=[UIColor whiteColor];
    UINavigationController* navHome=[[UINavigationController alloc]initWithRootViewController:homeVC];
    navHome.view.backgroundColor=[UIColor whiteColor];
    UINavigationController* navFollow=[[UINavigationController alloc]initWithRootViewController:followVC];
    navFollow.view.backgroundColor=[UIColor whiteColor];
    
    UITabBarController* tabbarControl=[[UITabBarController alloc]init];
    
    NSArray* arr=[NSArray arrayWithObjects:navMain,navLive,navFollow,navHome, nil];
    tabbarControl.viewControllers=arr;
    
    self.window.rootViewController=tabbarControl;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

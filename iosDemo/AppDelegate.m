//
//  AppDelegate.m
//  iosDemo
//
//  Created by hx_grx on 2017/8/18.
//  Copyright © 2017年 hx_grx. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//程序框架初始化成功后调用此函数
//整个ios开发的入口函数
//所有程序里面只有一个window
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //UIWindow也是继承于UIView,它是一个特殊的UIView
    //UIScreen表示屏幕硬件的表示类
    //mainScreen 获得主屏幕的设备信息
    //bounds 表示屏幕的宽高值
    self.window =[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    //创建一个视图控制器作为UIWindow的根视图控制器
    //self.window.rootViewController =[[UIViewController alloc] init];
    ViewController* vcRoot = [[ViewController alloc] init];
    //视图控制器用来管理和处理界面的逻辑类对象
    //程序启动前必须对根视图控制器赋值,否则报错
    self.window.rootViewController = vcRoot;
    self.window.backgroundColor = [UIColor whiteColor];
//    
//    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
//    view.backgroundColor = [UIColor orangeColor];
//    [self.window addSubview:view];
    
    //使window作为主视图并显示到屏幕上
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end

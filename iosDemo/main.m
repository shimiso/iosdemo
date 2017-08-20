//
//  main.m
//  iosDemo
//
//  Created by hx_grx on 2017/8/18.
//  Copyright © 2017年 hx_grx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

//整个App程序的主函数，入口函数
int main(int argc, char * argv[]) {
    //自动内存释放池
    @autoreleasepool {
        //UIkit框架结构的启动函数
        //p1:启动时带有的参数个数
        //p2:参数列表
        //p3:要求传入一个主框架类对象,如果为空,系统默认为主框架类名
        //p4:主框架的代理类对象
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

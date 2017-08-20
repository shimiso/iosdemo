//
//  ViewController.m
//  iosDemo
//
//  Created by hx_grx on 2017/8/18.
//  Copyright © 2017年 hx_grx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void) createLableUI{
    UILabel* lable = [[UILabel alloc] init];
    lable.text = @"世界,你好";
    lable.frame = CGRectMake(100, 100, 100, 40);
    lable.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:lable];
    lable.font = [UIFont systemFontOfSize:18];
    lable.textColor = [UIColor blueColor];
}

-(void) createUIReactButton{
    
    //UIView是ios中的视图对象,是所有显示在品目上对象的基础类
    UIView* view = [[UIView alloc] init];
    view.frame = CGRectMake(20, 20, 100, 40);
    view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view];
    view.hidden = YES;//是否隐藏图像
    view.alpha = 1;//1透明度 0透明
    view.opaque = NO;//设置是否显示不透明
    [view removeFromSuperview];//将自己从父亲视图中删除
    

    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(120, 120, 100, 40);
    [btn setTitle:@"press01" forState:UIControlStateNormal];
    [btn setTitle:@"press02" forState:UIControlStateHighlighted];
   
    btn.backgroundColor = [UIColor grayColor];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
    btn.titleLabel.font = [UIFont systemFontOfSize:24];
    
    //p1:谁来实现事件按钮
    //p2:函数对象,满足p3条件的回调函数
    //p3:事件处理函数 UIControlEventTouchUpInside 当手指离开屏幕且手指的位置在按钮范围内发生触发事件函数
    //UIControlEventTouchDown 当手指触碰到屏幕上时
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    [btn addTarget:self action:@selector(touchDown) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
    btn.tag = 101;
}

-(void) touchDown{
    NSLog(@"按钮被触碰");
}

-(void) pressBtn:(UIButton*) btn{
    NSLog(@"按钮被按下");
}

-(void) createImageButton{
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 200, 100, 200);
    
    UIImage* img1 = [UIImage imageNamed:@"btn01"];
    UIImage* img2 = [UIImage imageNamed:@"btn02"];
    
    [btn setImage:img1 forState:UIControlStateNormal];
    [btn setImage:img2 forState:UIControlStateHighlighted];
    [self.view addSubview:btn];

}

-(void) createUIView{
    UIView* view1 = [[UIView alloc] init];
    view1.frame = CGRectMake(100, 100, 150, 150);
    view1.backgroundColor = [UIColor blueColor];
    
    UIView* view2 = [[UIView alloc] init];
    view2.frame = CGRectMake(125, 125, 150, 150);
    view2.backgroundColor = [UIColor orangeColor];
    
    UIView* view3 = [[UIView alloc] init];
    view3.frame = CGRectMake(150, 150, 150, 150);
    view3.backgroundColor = [UIColor greenColor];
    
    [self.view addSubview:view1];
    [self.view addSubview:view2];
    [self.view addSubview:view3];
    
    //[self.view bringSubviewToFront:view1];//将试图调整到最前面

}

//当视图控制器第一次被加载显示视图时,调用此函数,只加载一次
//布局初始化视图来使用,初始化资源
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"第一次加载视图");
    [self createUIView];
}

//当视图控制器的视图即将显示时,调用此函数,每次视图显示都会被调用
//视图分为:1.显示前(不显示) 2.正在处于显示状态 3.已经被隐藏
//参数:表示是否用动画切换显示
-(void) viewWillAppear:(BOOL)animated{
    NSLog(@"视图即将要显示");
}
//当视图已经显示到屏幕后的瞬间调用此函数
-(void) viewDidAppear:(BOOL)animated{
    NSLog(@"视图显示");
}

//糊涂即将消失时调用此函数
//参数:是否用动画切换后消失
//当前状态:视图还显示在屏幕上
-(void) viewWillDisappear:(BOOL)animated{
     NSLog(@"视图即将消失");
}

//当前视图已经从屏幕上消失
-(void) viewDidDisappear:(BOOL)animated{
    NSLog(@"视图消失");
}

//当系统内存过低时,会发起警告信息,调用此函数
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"内存过低!");
}


@end

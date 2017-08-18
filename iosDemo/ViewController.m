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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createUIView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
   
}


@end

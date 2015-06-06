//
//  ViewController.m
//  XNQTabBar
//
//  Created by xunianqiang on 15/5/26.
//  Copyright (c) 2015年 xunianqiang. All rights reserved.
//

#import "ViewController.h"

#import "FirstViewController.h"
#import "SencondViewController.h"
#import "thirdViewController.h"
#import "forthViewController.h"

#import "XNQTabBarViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnClick:(id)sender {
    
    FirstViewController *fvc = [[FirstViewController alloc]init];
    SencondViewController *svc = [[SencondViewController alloc]init];
    thirdViewController *thvc = [[thirdViewController alloc] init];
    forthViewController *forvc = [[forthViewController alloc]init];

    
    XNQTabBarViewController *myTabBarVC = [[XNQTabBarViewController alloc]init];
    myTabBarVC.viewControllers = @[fvc,svc,thvc,forvc];
    myTabBarVC.tabbarImageNormal = @[@"tabbar_home_normal",@"tabbar_gather_normal",@"tabbar_pay_normal",@"tabbar_me_normal",@"tabbar_me_normal"];
    myTabBarVC.tabbarImageSelect = @[@"tabbar_home_press",@"tabbar_gather_press",@"tabbar_pay_press",@"tabbar_me_press",@"tabbar_me_press"];
    myTabBarVC.titleArray = @[@"主页",@"收款",@"付款",@"我",@"我"];
    
    [self presentViewController:myTabBarVC animated:YES completion:nil];
}

@end

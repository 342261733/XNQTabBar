//
//  forthViewController.m
//  XNQTabBar
//
//  Created by xunianqiang on 15/5/26.
//  Copyright (c) 2015年 xunianqiang. All rights reserved.
//

#import "forthViewController.h"

#import "XNQTabBarViewController.h"

@interface forthViewController ()

@end

@implementation forthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor blueColor]];
    
    XNQTabBarViewController *myTvc =  (XNQTabBarViewController *)self.tabBarController;
    [myTvc noticeWithViewControllerNumber:1];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(100, 100, 100, 30)];
    [btn setTitle:@"点我啊" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

}

-(void)btnClick:(UIButton *)btn
{
    BOOL isHiden = YES;
    static int ii = 0;
    if (ii%2 == 0) {
        isHiden = YES;
        
    }
    else{
        isHiden = NO;
    }

    XNQTabBarViewController *myTvc =  (XNQTabBarViewController *)self.tabBarController;
    [myTvc hidenTabBar:isHiden];
    
    ii++;
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

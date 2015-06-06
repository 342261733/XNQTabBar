//
//  XNQTabBarViewController.m
//  XNQTabBar
//
//  Created by xunianqiang on 15/5/26.
//  Copyright (c) 2015年 xunianqiang. All rights reserved.
//

#import "XNQTabBarViewController.h"

#import "XNQTabBar.h"
#import "XNQTabBarItem.h"

@interface XNQTabBarViewController ()

@end

@implementation XNQTabBarViewController

#define TABBARTAG 1000
#define TABTITLENORMALCOLOR [UIColor colorWithRed:134.0/255 green:139.0/255 blue:142.0/255 alpha:1.0]
#define TABTITLESELECTCOLOR [UIColor colorWithRed:14.0/255 green:118.0/255 blue:168.0/255 alpha:1.0]



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.myTabBar = [[UITabBar alloc]init];
    self.myTabBar.frame = self.tabBar.frame;
    for (int i=0; i<_titleArray.count; i++) {
        CGFloat width = self.tabBar.frame.size.width/_titleArray.count;
        CGFloat height = self.tabBar.frame.size.height;
        CGFloat x = i*width;
        CGFloat y = 0;
        XNQTabBarItem *myItem = [[[NSBundle mainBundle] loadNibNamed:@"XNQTabBarItem" owner:self options:nil]lastObject];
        myItem.tabBarImage.image = [UIImage imageNamed:_tabbarImageNormal[i]];
        myItem.tabBarTitle.text = _titleArray[i];
        myItem.tabBarTipsImage.hidden = YES;
        myItem.tag = TABBARTAG+i;
        myItem.bgButton.tag = TABBARTAG+i;
        [myItem.bgButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [myItem setFrame:CGRectMake(x, y, width, height)];
        if (i==0) {
            [self btnClick:myItem.bgButton];
        }
        [self.myTabBar addSubview:myItem];
        
    }
    [self.view addSubview:self.myTabBar];
    
    XNQTabBarItem *myItem = (XNQTabBarItem *)[self.view viewWithTag:TABBARTAG];
    [self btnClick:myItem.bgButton];
}


-(void)btnClick:(UIButton *)btn
{
    for (int i=0; i<_titleArray.count; i++) {
        XNQTabBarItem *myItem = (XNQTabBarItem *)[self.view viewWithTag:i+TABBARTAG];
        if (btn.tag == (i+TABBARTAG)) {
            myItem.tabBarImage.image = [UIImage imageNamed:_tabbarImageSelect[i]];
            myItem.tabBarTitle.textColor = TABTITLESELECTCOLOR;
            myItem.tabBarTipsImage.hidden = YES;
        }
        else{
            myItem.tabBarImage.image = [UIImage imageNamed:_tabbarImageNormal[i]];
            myItem.tabBarTitle.textColor = TABTITLENORMALCOLOR;
        }
        
    }
    self.selectedIndex = btn.tag - TABBARTAG;
}


-(void)noticeWithViewControllerNumber:(NSInteger)vcNum
{
    XNQTabBarItem *myItem = (XNQTabBarItem *)[self.view viewWithTag:vcNum+TABBARTAG];
    myItem.tabBarTipsImage.hidden = NO;
    NSLog(@"hello");
}
-(void)noticeCancelWithViewControllerNumber:(NSInteger)vcNum
{
    XNQTabBarItem *myItem = (XNQTabBarItem *)[self.view viewWithTag:vcNum+TABBARTAG];
    myItem.tabBarTipsImage.hidden = YES;
//    NSLog(@"hello");
}

-(void)hidenTabBar:(BOOL)isHiden
{
    [self.tabBar setHidden:isHiden];
    [self.myTabBar setHidden:isHiden];
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

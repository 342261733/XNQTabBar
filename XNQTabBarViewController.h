//
//  XNQTabBarViewController.h
//  XNQTabBar
//
//  Created by xunianqiang on 15/5/26.
//  Copyright (c) 2015年 xunianqiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XNQTabBarViewController : UITabBarController

@property (nonatomic,strong) UITabBar *myTabBar;

@property (nonatomic,strong) NSArray *tabbarImageNormal;
@property (nonatomic,strong) NSArray *tabbarImageSelect;
@property (nonatomic,strong) NSArray *titleArray;

//设置提醒
-(void)noticeWithViewControllerNumber:(NSInteger)vcNum;
//取消提醒
-(void)noticeCancelWithViewControllerNumber:(NSInteger)vcNum;

//隐藏
-(void)hidenTabBar:(BOOL)isHiden;

@end

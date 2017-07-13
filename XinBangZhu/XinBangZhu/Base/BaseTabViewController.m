//
//  BaseTabViewController.m
//  XinBangZhu
//
//  Created by 何泳 on 2017/7/12.
//  Copyright © 2017年 heyong. All rights reserved.
//

#import "BaseTabViewController.h"
#import "BaseViewController.h"
#import "MainViewController.h"

@interface BaseTabViewController ()

@end

@implementation BaseTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)creatSubViews
{
    
    NSArray *nameArray = @[@"MainViewController"];
    NSArray *titleArray = @[@"我的"];
    NSArray *imgArray = @[@"my"];
    NSArray *SelectImgArray = @[@"my_pre"];
    NSMutableArray *arrayM = [NSMutableArray array];
    for (int i = 0; i < nameArray.count; i ++) {
        Class class = NSClassFromString(nameArray[i]);
        BaseViewController *VC = [[class alloc] init];
        UINavigationController *naVC = [[UINavigationController alloc] initWithRootViewController:VC];
        naVC.tabBarItem.title = titleArray[i];
        naVC.tabBarItem.image = [[UIImage imageNamed:imgArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        naVC.tabBarItem.selectedImage = [[UIImage imageNamed:SelectImgArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [arrayM addObject:naVC];
    }
    self.viewControllers = arrayM;
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

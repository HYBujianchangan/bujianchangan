//
//  AppDelegate.h
//  XinBangZhu
//
//  Created by 何泳 on 2017/7/12.
//  Copyright © 2017年 heyong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end


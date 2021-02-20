//
//  ViewController.m
//  LDAdaptationToolDemo
//
//  Created by Sanchain on 2019/12/26.
//  Copyright © 2019 Sanchain. All rights reserved.
//

#import "ViewController.h"
#import "LDAdaptationTool.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    NSLog(@"当前手机的型号:%@, app 名称：%@, app 版本：%@, iphone系统版本:%@, Tabbar 高度：%f, 状态栏高度：%f, %f", [LDAdaptationTool ld_deviceModel], [LDAdaptationTool ld_getAppName], [LDAdaptationTool ld_getAppVersion], [LDAdaptationTool ld_getIOSVersion], [LDAdaptationTool ld_getTabBarHeight], [LDAdaptationTool ld_getStatusBarHeight], [[LDAdaptationTool ld_getIOSVersion] floatValue]);
    
    NSLog(@"SCREEN_WIDTH:%f,   SCREEN_HEIGHT:%f", [LDAdaptationTool ld_getScreenWidth], [LDAdaptationTool ld_getScreenHeight]);
    
     
    NSLog(@"字体大小:%f,宽度:%f,高度:%f",[[LDAdaptationTool defaultManager] ld_autoScaleFontSize:18],[[LDAdaptationTool defaultManager] ld_autoScaleW:80],[[LDAdaptationTool defaultManager] ld_autoScaleH:150]);
 
  
}



@end

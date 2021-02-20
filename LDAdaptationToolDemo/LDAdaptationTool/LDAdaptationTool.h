//
//  LDAdaptationTool.h
//  LinkDashCam
//
//  Created by Sanchain on 2019/4/15.
//  Copyright © 2019 卡卡. All rights reserved.
//  适配工具：屏幕适配、系统适配

#import <Foundation/Foundation.h>

@import UIKit;

@interface LDAdaptationTool : NSObject

+ (LDAdaptationTool *)defaultManager;

/**
 *  获取屏幕的宽度 (支持屏幕旋转)
 */
+ (CGFloat)ld_getScreenWidth;

/**
 *  获取屏幕的高度 (支持屏幕旋转)
 */
+ (CGFloat)ld_getScreenHeight;


/*
 获取 导航栏的高度
 适配iphoneX\XS\XR\XS MAX 留海系列
 */
+ (CGFloat)getNavigationBarHeight;

/**
 *  获取状态栏的高度
 */
+ (CGFloat)ld_getStatusBarHeight;

/**
 *  获取TabBar的高度
 */
+ (CGFloat)ld_getTabBarHeight;

/*
 获取底部 Tabbar 安全高度，适用于留海系列
 */
+ (CGFloat)getTabbarSafeHeight;


/*
 是否是留海系列的机型
 */
+ (BOOL)isIphoneXSeries;


/**
 *  获取 iOS 系统版本
 *  @return 如：14
 */
+ (NSInteger)getIosVersion;


/*
 获取苹果手机的型号
 @return 如 iPhone 11
 */
+ (NSString *)ld_deviceModel;


/*
 获取 APP 的名称
 */
+ (NSString *)ld_getAppName;


/*
 获取 APP 的版本号
 @return    如1.1
 */
+ (NSString *)ld_getAppVersion;

/**
 *  获取iOS系统版本
 *  @return 14.0.1
 */
+ (NSString *)ld_getIOSVersion;

/**
 *  获取比例宽度
 *  @return 如120.0
 */
- (CGFloat)ld_autoScaleW:(CGFloat)w;
/**
 *  获取比例高度
 *  @return 如320.0
 */
- (CGFloat)ld_autoScaleH:(CGFloat)h;
/**
 *  获取比例字体大小
 *  @return 如12.0
 */
- (CGFloat)ld_autoScaleFontSize:(CGFloat)fontSize;
@end


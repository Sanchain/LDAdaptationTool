//
//  LDAdaptationTool.m
//  LinkDashCam
//
//  Created by Sanchain on 2019/4/15.
//  Copyright © 2019 卡卡. All rights reserved.
//

#import "LDAdaptationTool.h"
#import "sys/utsname.h"

#define LD_SCREEN_WIDTH   [UIScreen mainScreen].bounds.size.width
#define LD_SCREEN_HEIGHT  [UIScreen mainScreen].bounds.size.height

#define KSCREENWIDTH_ROTATION ((LD_SCREEN_WIDTH>LD_SCREEN_HEIGHT) ? LD_SCREEN_HEIGHT : LD_SCREEN_WIDTH)
#define KSCREENHEIGHT_ROTATION ((LD_SCREEN_WIDTH>LD_SCREEN_HEIGHT) ? LD_SCREEN_WIDTH : LD_SCREEN_HEIGHT)



@implementation LDAdaptationTool

#pragma mark - Public Api

/**
 *  获取屏幕的宽度 (支持屏幕旋转)
 */
+ (CGFloat)ld_getScreenWidth {
    return KSCREENWIDTH_ROTATION;
}

/**
 *  获取屏幕的高度 (支持屏幕旋转)
 */
+ (CGFloat)ld_getScreenHeight {
    return KSCREENHEIGHT_ROTATION;
}



+ (CGFloat)getNavigationBarHeight {
    
    BOOL iPhoneXSeries = [self isIphoneXSeries];
    CGFloat naviHeight = 0.0;
    if (iPhoneXSeries) { // iphone X 留海系列
        naviHeight = 88.0f;
//        NSLog(@"是 iphone X 留海系列");
    } else {
//        NSLog(@"不是 iphone X 留海系列");
        naviHeight = 64.0f;
    }
    return naviHeight;
        
}

+ (CGFloat)getTabbarSafeHeight {
    
    BOOL iPhoneXSeries = [self isIphoneXSeries];
    CGFloat tabbarSafeH = 0.0f;
    if (iPhoneXSeries) {
        tabbarSafeH = 34.0f;
    } else {
        tabbarSafeH = 0.0f;
    }
    return tabbarSafeH;
}


/**
 *  获取状态栏的高度
 */
+ (CGFloat)ld_getStatusBarHeight {
    
    BOOL iPhoneXSeries = [self isIphoneXSeries];
    CGFloat statusBarHeight = 20.0;
    if (iPhoneXSeries) {
        statusBarHeight = 40.0;
    }
    return statusBarHeight;
}

/**
 *  获取TabBar的高度
 */
+ (CGFloat)ld_getTabBarHeight {
    BOOL iPhoneXSeries = [self isIphoneXSeries];
    CGFloat tabBarHeight = 49.0;
    if (iPhoneXSeries) {
        tabBarHeight = 83.0;
    }
    return tabBarHeight;
}


/*
    返回是否iphone X 留海系列
 */
+ (BOOL)isIphoneXSeries {
    
    BOOL iPhoneXSeries = NO;
    if (UIDevice.currentDevice.userInterfaceIdiom != UIUserInterfaceIdiomPhone) {
        return iPhoneXSeries;
    }
    if (@available(iOS 11.0, *)) {
        UIWindow *mainWindow = [[[UIApplication sharedApplication] delegate] window];
        if (mainWindow.safeAreaInsets.bottom > 0.0) {
            iPhoneXSeries = YES;
        }
    }
    return iPhoneXSeries;
}

/**
 *  获取系统版本
 */
+ (NSInteger)getIosVersion {
    NSArray *verStringArr = [[UIDevice currentDevice].systemVersion componentsSeparatedByString:@"."];
    if (verStringArr.count > 0) {
        NSInteger iOSVer = [[verStringArr objectAtIndex:0] integerValue]; // 系统的版本
//        NSLog(@"获取苹果手机的系统版本号：%ld", iOSVer);
        return iOSVer;
    }
    return 11.0;
}

+ (NSString *)ld_deviceModel {
    
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString * deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    NSLog(@"Device Model : %@", deviceString);
    //iPhone
    if ([deviceString isEqualToString:@"iPhone1,1"])    return @"iPhone 1G";
    if ([deviceString isEqualToString:@"iPhone1,2"])    return @"iPhone 3G";
    if ([deviceString isEqualToString:@"iPhone2,1"])    return @"iPhone 3GS";
    if ([deviceString isEqualToString:@"iPhone3,1"])    return @"iPhone 4";
    if ([deviceString isEqualToString:@"iPhone3,2"])    return @"iPhone 4";
    if ([deviceString isEqualToString:@"iPhone4,1"])    return @"iPhone 4S";
    if ([deviceString isEqualToString:@"iPhone5,1"])    return @"iPhone 5";
    if ([deviceString isEqualToString:@"iPhone5,2"])    return @"iPhone 5 (GSM+CDMA)";
    if ([deviceString isEqualToString:@"iPhone5,3"])    return @"iPhone 5c (GSM)";
    if ([deviceString isEqualToString:@"iPhone5,4"])    return @"iPhone 5c (GSM+CDMA)";
    if ([deviceString isEqualToString:@"iPhone6,1"])    return @"iPhone 5s (GSM)";
    if ([deviceString isEqualToString:@"iPhone6,2"])    return @"iPhone 5s (GSM+CDMA)";
    if ([deviceString isEqualToString:@"iPhone7,1"])    return @"iPhone 6 Plus";
    if ([deviceString isEqualToString:@"iPhone7,2"])    return @"iPhone 6";
    if ([deviceString isEqualToString:@"iPhone8,1"])    return @"iPhone 6s";
    if ([deviceString isEqualToString:@"iPhone8,2"])    return @"iPhone 6s Plus";
    if ([deviceString isEqualToString:@"iPhone8,4"])    return @"iPhone SE";
    if ([deviceString isEqualToString:@"iPhone9,1"])    return @"国行、日版、港行iPhone 7";
    if ([deviceString isEqualToString:@"iPhone9,2"])    return @"港行、国行iPhone 7 Plus";
    if ([deviceString isEqualToString:@"iPhone9,3"])    return @"美版、台版iPhone 7";
    if ([deviceString isEqualToString:@"iPhone9,4"])    return @"美版、台版iPhone 7 Plus";
    if ([deviceString isEqualToString:@"iPhone10,1"])   return @"国行(A1863)、日行(A1906)iPhone 8";
    if ([deviceString isEqualToString:@"iPhone10,3"])   return @"iPhone X";
    if ([deviceString isEqualToString:@"iPhone10,4"])   return @"美版(Global/A1905)iPhone 8";
    if ([deviceString isEqualToString:@"iPhone10,2"])   return @"国行(A1864)、日行(A1898)iPhone 8 Plus";
    if ([deviceString isEqualToString:@"iPhone10,5"])   return @"美版(Global/A1897)iPhone 8 Plus";
    if ([deviceString isEqualToString:@"iPhone10,3"])   return @"国行(A1865)、日行(A1902)iPhone X";
    if ([deviceString isEqualToString:@"iPhone10,6"])   return @"美版(Global/A1901)iPhone X";
    
    if ([deviceString isEqualToString:@"iPhone11,2"])   return @"iPhone XS";
    if ([deviceString isEqualToString:@"iPhone11,4"])   return @"iPhone XS Max";
    if ([deviceString isEqualToString:@"iPhone11,6"])   return @"iPhone XS Max";
    if ([deviceString isEqualToString:@"iPhone11,8"])   return @"iPhone XR";
    if ([deviceString isEqualToString:@"iPhone12,1"])   return @"iPhone 11";
    if ([deviceString isEqualToString:@"iPhone12,3"])   return @"iPhone 11 Pro";
    if ([deviceString isEqualToString:@"iPhone12,5"])   return @"iPhone 11 Pro Max";
    if ([deviceString isEqualToString:@"iPhone12,8"])   return @"iPhone SE 2";
    if ([deviceString isEqualToString:@"iPhone13,1"])   return @"iPhone 12 mini";
    if ([deviceString isEqualToString:@"iPhone13,2"])   return @"iPhone 12";
    if ([deviceString isEqualToString:@"iPhone13,3"])   return @"iPhone 12 Pro";
    if ([deviceString isEqualToString:@"iPhone13,4"])   return @"iPhone 12 Pro Max";

    if ([deviceString isEqualToString:@"i386"])         return @"Simulator";
    if ([deviceString isEqualToString:@"x86_64"])       return @"Simulator";

    return deviceString;
}


+ (NSString *)ld_getAppName {
    
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];//获取app版本信息
    CFShow((__bridge CFTypeRef)(infoDictionary));
    NSString *app_Name = [infoDictionary objectForKey:@"CFBundleName"];
//    NSLog(@"APP 名称：%@", app_Name);
    return app_Name;
}


/*
 获取 APP 的版本号
 */
+ (NSString *)ld_getAppVersion {
    
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];//获取app版本信息
    NSString *appVersion = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
//    NSLog(@"APP 版本号：%@", appVersion);
    return appVersion;
}

/**
 *  获取iOS系统版本
 */
+ (NSString *)ld_getIOSVersion {
    
//    NSLog(@"获取苹果手机的系统版本：%@", [UIDevice currentDevice].systemVersion);
    return [UIDevice currentDevice].systemVersion;
}

+ (CGFloat)ld_getIOSVersionFloat {
    return [[UIDevice currentDevice].systemVersion floatValue];
}


@end

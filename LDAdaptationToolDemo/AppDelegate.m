//
//  AppDelegate.m
//  LDAdaptationToolDemo
//
//  Created by Sanchain on 2019/12/26.
//  Copyright © 2019 Sanchain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end



@implementation AppDelegate

@synthesize window = _window; // 解决报错：The app delegate must implement the window property if it wants to use a main storyboard file

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}



@end

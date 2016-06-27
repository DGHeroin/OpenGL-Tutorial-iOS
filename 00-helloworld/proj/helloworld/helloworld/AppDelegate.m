//
//  AppDelegate.m
//  helloworld
//
//  Created by ade.li on 16/6/27.
//  Copyright © 2016年 ade. All rights reserved.
//

#import "AppDelegate.h"
#import "OpenGLView.h"
#import "ViewController.h"
@interface AppDelegate ()

@property OpenGLView* view;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // 1. 创建 Window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor redColor];
    
    // 2. 创建 ViewController
    ViewController* controller = [[ViewController alloc] initWithNibName:nil bundle:nil];
    
    // 3. 指定window的controller
    self.window.rootViewController = controller;
    [self.window makeKeyAndVisible];
    
    // 4. 创建OpenGLView
    self.view = [[OpenGLView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.view create];
    [self.window addSubview:self.view];
    
    // 5.渲染
    [self.view render];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

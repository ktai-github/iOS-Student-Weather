//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
  
  LHWCity *vancouver = [[LHWCity alloc] init];
  LHWCity *losAngeles = [[LHWCity alloc] init];
  LHWCity *dubai = [[LHWCity alloc] init];
  LHWCity *london = [[LHWCity alloc] init];
  LHWCity *tokyo = [[LHWCity alloc] init];

  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
  UITabBarController *rootViewController = [storyboard instantiateViewControllerWithIdentifier:@"tabBarController"];
  [[UIApplication sharedApplication].keyWindow setRootViewController:rootViewController];
  
  LHWCityViewController *vancouverVC = [[LHWCityViewController alloc] init];
  LHWCityViewController *losAngelesVC = [[LHWCityViewController alloc] init];
  LHWCityViewController *dubaiVC = [[LHWCityViewController alloc] init];
  LHWCityViewController *londonVC = [[LHWCityViewController alloc] init];
  LHWCityViewController *tokyoVC = [[LHWCityViewController alloc] init];
  
  UINavigationController *vancouverNC = [[UINavigationController alloc] initWithRootViewController:vancouverVC];
  UINavigationController *losAngelesNC = [[UINavigationController alloc] initWithRootViewController:losAngelesVC];
  UINavigationController *dubaiNC = [[UINavigationController alloc] initWithRootViewController:dubaiVC];
  UINavigationController *londonNC = [[UINavigationController alloc] initWithRootViewController:londonVC];
  UINavigationController *tokyoNC = [[UINavigationController alloc] initWithRootViewController:tokyoVC];
  
  rootViewController.viewControllers = [NSArray arrayWithObjects:vancouverNC, losAngelesNC, dubaiNC, londonNC, tokyoNC, nil];

    [self.window makeKeyAndVisible];
    return YES;
}

@end

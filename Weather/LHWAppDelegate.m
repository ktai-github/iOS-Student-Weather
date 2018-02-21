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
  vancouver.condition = @"Snowy";
  
  LHWCity *losAngeles = [[LHWCity alloc] init];
  losAngeles.condition = @"sunny";
  
  LHWCity *dubai = [[LHWCity alloc] init];
  dubai.condition = @"hot";
  
  LHWCity *london = [[LHWCity alloc] init];
  london.condition = @"foggy";
  
  LHWCity *tokyo = [[LHWCity alloc] init];
  tokyo.condition = @"rainy";

//  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
  UITabBarController *rootViewController = [[UITabBarController alloc] initWithNibName:nil bundle:nil];
//  [[UIApplication sharedApplication].keyWindow setRootViewController:rootViewController];
  self.window.rootViewController = rootViewController;
  [self.window makeKeyAndVisible];
  
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
  
  vancouverNC.title = @"Vancouver";
  losAngelesNC.title = @"Los Angeles";
  dubaiNC.title = @"Dubai";
  londonNC.title = @"London";
  tokyoNC.title = @"Tokyo";
  
  rootViewController.viewControllers = [NSArray arrayWithObjects:vancouverNC, losAngelesNC, dubaiNC, londonNC, tokyoNC, nil];

//  UITabBarItem *vancouverTab = [[UITabBarItem alloc] initWithTitle:@"Vancouver" image:nil tag:0];
//  UITabBarItem *losAngelesTab = [[UITabBarItem alloc] initWithTitle:@"Los Angeles" image:nil tag:1];
//  UITabBarItem *dubaiTab = [[UITabBarItem alloc] initWithTitle:@"Dubai" image:nil tag:2];
//  UITabBarItem *londonTab = [[UITabBarItem alloc] initWithTitle:@"London" image:nil tag:3];
//  UITabBarItem *tokyoTab = [[UITabBarItem alloc] initWithTitle:@"Tokyo" image:nil tag:4];

  //  rootViewController.viewControllers = [NSArray arrayWithObjects:vancouverNC, losAngelesNC, dubaiNC, londonNC, tokyoNC, nil];

    [self.window makeKeyAndVisible];
    return YES;
}

@end

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
  
  //calling city class to hard code conditions
  LHWCity *vancouver = [[LHWCity alloc] initWithCityName:@"Vancouver"];
  [vancouver enterCondition:@"snowy ❄️"];
  
  LHWCity *losAngeles = [[LHWCity alloc] initWithCityName:@"Los Angeles"];
  [losAngeles enterCondition:@"sunny 🌤"];
  
  LHWCity *dubai = [[LHWCity alloc] initWithCityName:@"Dubai"];
  [dubai enterCondition:@"hot ☀️"];
  
  LHWCity *london = [[LHWCity alloc] initWithCityName:@"London"];
  [london enterCondition:@"foggy 🌫"];
  
  LHWCity *tokyo = [[LHWCity alloc] initWithCityName:@"Tokyo"];
  [tokyo enterCondition:@"rainy 🌧"];

  //set root view controller to be tab bar controller
//  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
  UITabBarController *rootViewController = [[UITabBarController alloc] initWithNibName:nil bundle:nil];
//  [[UIApplication sharedApplication].keyWindow setRootViewController:rootViewController];
  self.window.rootViewController = rootViewController;
  [self.window makeKeyAndVisible];
  
  //attach city class to city view controller
  LHWCityViewController *vancouverVC = [[LHWCityViewController alloc] initWithNibName:nil bundle:nil];
  vancouverVC.city = vancouver;
  LHWCityViewController *losAngelesVC = [[LHWCityViewController alloc] initWithNibName:nil bundle:nil];
  losAngelesVC.city = losAngeles;
  LHWCityViewController *dubaiVC = [[LHWCityViewController alloc] initWithNibName:nil bundle:nil];
  dubaiVC.city = dubai;
  LHWCityViewController *londonVC = [[LHWCityViewController alloc] initWithNibName:nil bundle:nil];
  londonVC.city = london;
  LHWCityViewController *tokyoVC = [[LHWCityViewController alloc] initWithNibName:nil bundle:nil];
  tokyoVC.city = tokyo;

  //attach city view controller to city nav controller
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
  
  //attach city nav controller to root view controller (tab bar controller)
  rootViewController.viewControllers = [NSArray arrayWithObjects:vancouverNC, losAngelesNC, dubaiNC, londonNC, tokyoNC, nil];

    [self.window makeKeyAndVisible];
    return YES;
}

@end


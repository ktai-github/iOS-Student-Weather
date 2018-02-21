//
//  LHWCityViewController.m
//  Weather
//
//  Created by KevinT on 2018-02-21.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "LHWCityViewController.h"
#import "LHWDetailedViewController.h"

@interface LHWCityViewController ()

@end

@implementation LHWCityViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)showWeatherDetails {
  LHWDetailedViewController *detailedVC = [[LHWDetailedViewController alloc] init];
  detailedVC.currentTemp = 20;
  detailedVC.chanceOfPrecip = 50;
  detailedVC.currentTime = [NSDate date];
  [self.navigationController pushViewController:detailedVC animated:YES];
  
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

//
//  LHWCityViewController.m
//  Weather
//
//  Created by KevinT on 2018-02-21.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "LHWCityViewController.h"
#import "LHWDetailedViewController.h"
#import "LHWCity.h"

@interface LHWCityViewController ()

@end

@implementation LHWCityViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  
  //detail weather button
  UIButton *detailedWeatherButton = [[UIButton alloc] initWithFrame:CGRectMake(20.0, 100.0, 100.0, 50.0)];
  [detailedWeatherButton setTitle:@"Details" forState:UIControlStateNormal];
  detailedWeatherButton.backgroundColor = [UIColor blueColor];
  [detailedWeatherButton setNeedsLayout];
  [detailedWeatherButton layoutIfNeeded];
  [self.view addSubview:detailedWeatherButton];
  [detailedWeatherButton addTarget:self
               action:@selector(showWeatherDetails)
     forControlEvents:UIControlEventTouchUpInside];
  
  UILabel *cityInfo = [[UILabel alloc] initWithFrame:CGRectMake(50.0,200.0,300.0,100.0)];

  //city info from city class
  NSString *cityName = [self.city getCityName];
  NSString *condition = [self.city getCondition];
  
  //city info label
  cityInfo.text = [NSString stringWithFormat:@"%@ %@", cityName, condition];
  cityInfo.textColor = [UIColor blueColor];
  cityInfo.backgroundColor = [UIColor whiteColor];
  cityInfo.lineBreakMode = NSLineBreakByWordWrapping;
  cityInfo.numberOfLines = 0;
  [self.view addSubview:cityInfo];
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)showWeatherDetails {
  
//  show detailed weather
  LHWDetailedViewController *detailedVC = [[LHWDetailedViewController alloc] init];
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

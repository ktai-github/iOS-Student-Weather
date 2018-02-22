//
//  LHWDetailedViewController.m
//  Weather
//
//  Created by KevinT on 2018-02-21.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "LHWDetailedViewController.h"

@interface LHWDetailedViewController ()

@end

@implementation LHWDetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
  //detailed weather label
  UILabel *weatherInfo = [[UILabel alloc] initWithFrame:CGRectMake(50.0,200.0,300.0,100.0)];
  weatherInfo.text = [NSString stringWithFormat:@"current temp. %d, chance of precip. %d, current date and time %@", self.currentTemp, self.chanceOfPrecip, self.currentTime];
  weatherInfo.textColor = [UIColor blueColor];
  weatherInfo.backgroundColor = [UIColor whiteColor];
  weatherInfo.lineBreakMode = NSLineBreakByWordWrapping;
  weatherInfo.numberOfLines = 0;
  [self.view addSubview:weatherInfo];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (instancetype)init
{
  //hard code detail weather
  self = [super init];
  if (self) {
    self.currentTemp = 20;
    self.chanceOfPrecip = 50;
    self.currentTime = [NSDate date];
  }
  return self;
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

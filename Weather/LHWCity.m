//
//  LHWCity.m
//  Weather
//
//  Created by KevinT on 2018-02-21.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "LHWCity.h"

@implementation LHWCity

- (instancetype)initWithCityName: (NSString *)City
{
  self = [super init];
  if (self) {
    self.cityName = City;
  }
  return self;
}

//- (void) setCityName: (NSString *)City {
//  self.cityName = City;
//}
- (void) enterCondition: (NSString *)Condition {
  self.condition = Condition;
}

- (NSString *) getCityName {
  return self.cityName;
}
- (NSString *) getCondition {
  return self.condition;
}

@end

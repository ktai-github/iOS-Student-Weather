//
//  LHWCityViewController.h
//  Weather
//
//  Created by KevinT on 2018-02-21.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LHWCity.h"

@interface LHWCityViewController : UIViewController

@property (nonatomic) LHWCity *city;

- (void)showWeatherDetails;

@end

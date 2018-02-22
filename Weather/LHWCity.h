//
//  LHWCity.h
//  Weather
//
//  Created by KevinT on 2018-02-21.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LHWCity : NSObject

@property (nonatomic) NSString *cityName;
@property (nonatomic) NSString *condition;

- (instancetype)initWithCityName: (NSString *)City;

//- (void) setCityName: (NSString *)City;
- (void) enterCondition: (NSString *)Condition;

- (NSString *) getCityName;
- (NSString *) getCondition;

@end

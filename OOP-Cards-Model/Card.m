//
//  Card.m
//  OOP-Cards-Model
//
//  Created by Danny Fenjves on 9/14/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "Card.h"

@implementation Card

-(instancetype)initWithBrand:(NSString *) brand{
    self = [super init];
    if (self) {
        _brand = brand;
    }
    return self;
}

@end

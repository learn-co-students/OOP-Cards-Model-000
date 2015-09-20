//
//  BaseballPlayer.m
//  OOP-Cards-Model
//
//  Created by Danny Fenjves on 9/14/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "BaseballPlayer.h"

@implementation BaseballPlayer

-(instancetype) initWithFirstName:(NSString *) firstName lastName:(NSString *)lastName weight:(NSNumber *) weight number:(NSNumber *)number height:(NSNumber *) height{
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _weight = weight;
        _number = number;
        _height = height;
    }
    return self;
}

-(instancetype)init{
    self = [self initWithFirstName:@"" lastName:@"" weight:@0 number:@0 height:@0];
    return self;
}

+(NSNumber *)convertLbsToKGsWithLbs:(NSNumber *)lbs{
    NSUInteger lbsInteger = [lbs floatValue];
    NSNumber *result = @(roundf(lbsInteger * 0.453));
    
    return result;
}

@end

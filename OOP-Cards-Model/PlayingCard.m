//
//  PlayingCard.m
//  OOP-Cards-Model
//
//  Created by Danny Fenjves on 9/14/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(instancetype)initWithSuit:(NSString *) suit rank:(NSUInteger) rank{
    self = [super init];
    if (self) {
        _suit = suit;
        _rank = rank;
    }
    return self;
}

-(NSString *)description{
    return nil;
}

@end

//
//  PlayingCard.m
//  OOP-Cards-Model
//
//  Created by Kevin Tsai on 8/28/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(instancetype)init{
    return [self initWithSuit:@"" rank:@0];
};

-(instancetype)initWithSuit:(NSString *)suit rank:(NSNumber *)rank{
    self = [super init];
    
    NSArray *suits = [NSArray arrayWithObjects:@"♥", @"♠", @"♣", @"♦", nil];
    
    if(self){
        if([suits containsObject:suit]){
            _suit = suit;
        } else {
            _suit = @"";
        }
        
        if ([rank intValue] > 0 && [rank intValue] <= 13) {
            _rank = rank;
        } else {
            _rank = @0;
        }
        
    }
    return self;
};

-(NSNumber *)rank{
    if([_rank intValue] > 13){
        _rank = @0;
    }
    return _rank;
};

-(NSString *)suit{
    NSArray *suits = [NSArray arrayWithObjects:@"♥", @"♠", @"♣", @"♦", nil];
    if(![suits containsObject:_suit]){
        _suit = @"";
    }
    return _suit;
};


-(NSString *)description{
    NSString *description = [NSString stringWithFormat:@"The suit is: %@ and rank is: %@", self.suit, self.rank];
    return description;
};

@end

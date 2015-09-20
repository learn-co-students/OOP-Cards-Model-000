//
//  PlayingCard.m
//  OOP-Cards-Model
//
//  Created by Danny Fenjves on 9/14/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "PlayingCard.h"

@interface PlayingCard ()

-(BOOL)isValidSuit:(NSString *)suit;
-(BOOL)isValidRank:(NSNumber *)rank;

@end

@implementation PlayingCard

@synthesize suit = _suit;

- (void) setSuit:(NSString *)suit {
    if ([self isValidSuit:suit]) {
        _suit = suit;
    }
}

- (void) setRank:(NSNumber *)rank {
    if ([self isValidRank:rank]) {
        _rank = rank;
    }
}

-(BOOL)isValidSuit:(NSString *)suit{
    NSArray *validSuits = @[@"♥", @"♠", @"♣", @"♦"];
    if ([validSuits containsObject:suit]) {
        return YES;
    }
    return NO;
}
-(BOOL)isValidRank:(NSNumber *)rank{
    if ([rank integerValue]>0 && [rank integerValue] <=13) {
        return YES;
    }
    return NO;
}


-(instancetype)initWithSuit:(NSString *) suit rank:(NSNumber *) rank{
    self = [super init];
    if (self) {
        if ([self isValidSuit:suit]) {
            _suit = suit;
        }else{
            _suit = @"";
        }
        if ([self isValidRank:rank]) {
            _rank = rank;
        }else{
            _rank = @0;
        }
        
    }
    return self;
}

-(instancetype)init{
    self = [self initWithSuit:@"" rank:@0];
    return self;
}

-(NSString *)description{
    NSString *descriptionOfCard = [NSString stringWithFormat:@""];
    return descriptionOfCard;
}

@end

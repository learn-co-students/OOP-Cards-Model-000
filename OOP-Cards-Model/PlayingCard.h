//
//  PlayingCard.h
//  OOP-Cards-Model
//
//  Created by Kevin Tsai on 8/28/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic, setter = setSuit:) NSString *suit;
@property (nonatomic) NSNumber *rank;
@property (nonatomic) NSNumber *cardNumber;


-(instancetype)init;
-(instancetype)initWithSuit:(NSString *)suit rank:(NSNumber *)rank;
-(NSString *)description;
-(NSNumber *)rank;
-(NSString *)suit;

@end

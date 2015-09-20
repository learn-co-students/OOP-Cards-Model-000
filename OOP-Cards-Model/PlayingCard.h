//
//  PlayingCard.h
//  OOP-Cards-Model
//
//  Created by Danny Fenjves on 9/14/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;

@property (nonatomic) NSNumber *rank;

-(instancetype)initWithSuit:(NSString *) suit rank:(NSNumber *) rank;

-(instancetype)init;

-(NSString *)description;

@end


//
//  BaseballCard.h
//  OOP-Cards-Model
//
//  Created by Danny Fenjves on 9/14/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "BaseballPlayer.h"

@interface BaseballCard : Card

@property (strong, nonatomic) BaseballPlayer *player;

@property (strong,nonatomic) NSString *teamName;

@property (nonatomic) NSNumber *cardNumber;


-(NSString *)description;

-(instancetype)init;

-(instancetype)initWithBaseballPlayer:(BaseballPlayer *)player teamName:(NSString *)teamName brand:(NSString*) brand cardNumber:(NSNumber *) cardNumber;


@end

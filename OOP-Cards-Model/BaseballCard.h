//
//  BaseballCard.h
//  OOP-Cards-Model
//
//  Created by Kevin Tsai on 8/28/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "Card.h"
#import "BaseballPlayer.h"

@interface BaseballCard : Card

@property (strong, nonatomic) BaseballPlayer *player;
@property (strong, nonatomic) NSString *teamName;
@property (strong, nonatomic) NSString *brand;
@property (nonatomic) NSNumber *cardNumber;
@property (nonatomic) BOOL faceUp;

-(instancetype)init;
-(instancetype)initWithBaseballPlayer:(BaseballPlayer *) baseballPlayer
                        teamName:(NSString *) teamName
                          brand:(NSString *) brand
                          cardNumber:(NSNumber *) cardNumber;

-(NSString *)description;
-(BOOL)isFaceUp;

@end

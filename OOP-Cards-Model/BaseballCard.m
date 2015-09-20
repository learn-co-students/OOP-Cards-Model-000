//
//  BaseballCard.m
//  OOP-Cards-Model
//
//  Created by Danny Fenjves on 9/14/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "BaseballCard.h"

@implementation BaseballCard

//@"Player name: Team name:Flatiron School Brand:New Era Card Number:1272"
-(NSString *)description{
    NSString *player = [NSString stringWithFormat:@"%@%@", self.player.firstName, self.player.lastName];
    NSString *descriptionOfCard = [NSString stringWithFormat:@"Player name:%@ Team name:%@ Brand:%@ Card Number:%@", player, self.teamName, self.brand, self.cardNumber];
    return descriptionOfCard;
}

-(instancetype)initWithBaseballPlayer:(BaseballPlayer *)player teamName:(NSString *)teamName brand:(NSString*) brand cardNumber:(NSNumber *) cardNumber{
    self = [super initWithBrand:brand];
    if (self) {
        _player = player;
        _teamName = teamName;
        _cardNumber = cardNumber;
    }
    return self;
}

-(instancetype)init{
    self = [self initWithBaseballPlayer:[[BaseballPlayer alloc]init] teamName:@"" brand:@"" cardNumber:@0];
    return self;
}

@end

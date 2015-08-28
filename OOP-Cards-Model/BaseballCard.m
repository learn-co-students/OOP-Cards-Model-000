//
//  BaseballCard.m
//  OOP-Cards-Model
//
//  Created by Kevin Tsai on 8/28/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "BaseballCard.h"

@implementation BaseballCard

-(instancetype)init{
    
    return [self initWithBaseballPlayer:([[BaseballPlayer alloc] init]) teamName:@"" brand:@"" cardNumber:@0];
};

-(instancetype)initWithBaseballPlayer:(BaseballPlayer *) player
                             teamName:(NSString *) teamName
                                brand:(NSString *) brand
                           cardNumber:(NSNumber *) cardNumber{
    self = [super init];
    if(self){
        _player = player;
        _teamName = teamName;
        _brand = brand;
        _cardNumber = cardNumber;
    }
    
    return self;
    
};

-(NSString *)description{
    NSString *description = [NSString stringWithFormat:@"Player name:%@ Team name:%@ Brand:%@ Card Number:%@", _player.firstName, self.teamName, self.brand, self.cardNumber];
    return description;
};

-(BOOL)isFaceUp{
    if(self.faceUp == YES){
        return TRUE;
    }
    return FALSE;
};

@end

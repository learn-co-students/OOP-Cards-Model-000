//
//  FISCard.h
//  OOP-Cards-Model
//
//  Created by Katala on 12/6/16.
//  Copyright © 2016 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISCard : NSObject

+ (NSArray *)validSuits;
+ (NSArray *)validRanks;

@property (strong, nonatomic, readonly) NSString *suit;
@property (strong, nonatomic, readonly) NSString *rank;
@property (strong, nonatomic, readonly) NSString *cardLabel;
@property (nonatomic, readonly) NSUInteger cardValue;

-(instancetype) init;
-(instancetype) initWithSuit: (NSString *) suit
                        rank: (NSString *) rank;

@end

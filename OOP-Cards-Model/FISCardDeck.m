//
//  FISCardDeck.m
//  OOP-Cards-Model
//
//  Created by Katala on 12/6/16.
//  Copyright © 2016 Al Tyus. All rights reserved.
//

#import "FISCardDeck.h"

@implementation FISCardDeck

-(instancetype) init{
    
    self = [super init];
    if (self) {
        _remainingCards = [[NSMutableArray alloc] init];
        _dealtCards = [[NSMutableArray alloc] init];
        [self generateCards];
    }
    
    return self;
}

-(void)generateCards{
    
    NSArray *validSuits = [FISCard validSuits];
    NSArray *validRanks = [FISCard validRanks];
    
    for (NSString *suit in validSuits) {
        for (NSString *rank in validRanks) {
            FISCard *card = [[FISCard alloc]initWithSuit:suit rank:rank];
            [self.remainingCards addObject:card];
        }
    }
    
}

-(FISCard *)drawNextCard{
    
    if (self.remainingCards.count == 0) {
        NSLog(@"The deck is empty");
        return nil;
    }
    
    FISCard *drawCard = self.remainingCards[0];
    [self.dealtCards addObject:drawCard];
    [self.remainingCards removeObjectAtIndex:0];
    
    return drawCard;
}

-(void)resetDeck{
    
    [self gatherDealtCards];
    [self shuffleRemainingCards];
}

-(void)gatherDealtCards{
    
    [self.remainingCards addObjectsFromArray:self.dealtCards];
    [self.dealtCards removeAllObjects];
    
    }

-(void)shuffleRemainingCards{
    
    NSMutableArray *cardsCopy = [self.remainingCards mutableCopy];
    [self.remainingCards removeAllObjects];
    
    NSUInteger total = cardsCopy.count;
    
    for (NSUInteger i = 0; i < total; i++) {
        NSUInteger cardsCount = cardsCopy.count;
        NSUInteger randomIndex = arc4random_uniform((unsigned int) cardsCount);
        
        FISCard *randomCard = cardsCopy[randomIndex];
        [cardsCopy removeObjectAtIndex:randomIndex];
        [self.remainingCards addObject:randomCard];
    }
 
}

-(NSString *)description{
    
    NSMutableString *result = [[NSMutableString alloc] init];
    
    [result appendFormat:@"FISCardDeck\ncount: %lu", self.remainingCards.count];
    
    [result appendString:@"\ncards:"];
    for (NSUInteger i=0; i<self.remainingCards.count; i++) {
        if (i % 13 == 0) {
            [result appendString:@"\n"];
        }
        
        FISCard *card = self.remainingCards[i];
        [result appendFormat:@"  %@", card.description];
    }
    
    return result;
    
}

@end

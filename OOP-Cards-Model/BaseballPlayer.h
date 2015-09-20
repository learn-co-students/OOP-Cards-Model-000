//
//  BaseballPlayer.h
//  OOP-Cards-Model
//
//  Created by Danny Fenjves on 9/14/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseballPlayer : NSObject

@property (nonatomic) NSNumber *weight;

@property (nonatomic) NSNumber *number;

@property (nonatomic) NSNumber *height;

@property (strong,nonatomic) NSString *firstName;

@property (strong,nonatomic) NSString *lastName;

-(instancetype) initWithFirstName:(NSString *) firstName lastName:(NSString *)lastName weight:(NSNumber *) weight number:(NSNumber *)number height:(NSNumber *) height;

-(instancetype)init;

+(NSNumber *)convertLbsToKGsWithLbs:(NSNumber *)lbs;

@end

//
//  Card.h
//  OOP-Cards-Model
//
//  Created by Danny Fenjves on 9/14/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong,nonatomic) NSString *brand;

@property (nonatomic) BOOL isFaceUp;

-(instancetype)initWithBrand:(NSString *) brand;

@end

//
//  RPSController.h
//  RockPaperScissors
//
//  Created by ABHISHEK DAGWAR on 2/27/19.
//  Copyright © 2019 self. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"
#import "RPSGame.h"

@interface RPSController : NSObject

@property (nonatomic) RPSGame *game;

-(void)throwDown:(Move)playersMove;
-(NSString*)messageForGame:(RPSGame*)game;
-(NSString*)resultString:(RPSGame*)game;

@end

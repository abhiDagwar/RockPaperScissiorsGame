//
//  RPSGame.m
//  RockPaperScissors
//
//  Created by ABHISHEK DAGWAR on 2/27/19.
//  Copyright © 2019 self. All rights reserved.
//

#import "RPSGame.h"

@implementation RPSGame

-(instancetype)initWithFirstTurn:(RPSTurn*)playerTurn
                      secondTurn:(RPSTurn*)computerTurn {
    self = [super init];
    if (self) {
        _firstTurn = playerTurn;
        _secondTurn = computerTurn;
    }
    return self;
}

-(RPSTurn*)winner {
    return [self.firstTurn defeat:self.secondTurn] ? self.firstTurn : self.secondTurn;
}

-(RPSTurn*)loser {
    return [self.firstTurn defeat:self.secondTurn] ? self.secondTurn : self.firstTurn;
}

@end

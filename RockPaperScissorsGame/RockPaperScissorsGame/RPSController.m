//
//  RPSController.m
//  RockPaperScissors
//
//  Created by ABHISHEK DAGWAR on 2/27/19.
//  Copyright © 2019 self. All rights reserved.
//

#import "RPSController.h"

@implementation RPSController

-(void)throwDown:(Move)playersMove {
    //RPSTurns generate the opponent's move
    RPSTurn *playersTurn = [[RPSTurn alloc] initWithMove:playersMove];
    RPSTurn *computersTurn = [[RPSTurn alloc] init];
        
    //The RPSGame class store the result of the game
    self.game = [[RPSGame alloc] initWithFirstTurn:playersTurn
                                        secondTurn:computersTurn];
}

-(NSString*)resultString:(RPSGame*)game {
    return [game.firstTurn defeat:game.secondTurn] ? @"You Win!" : @"You Lose!";
}

-(NSString*)messageForGame:(RPSGame*)game {
    //Handle a tie
    if (game.firstTurn.move == game.secondTurn.move) {
        return @"It's a tie!";
    } else {
        //Here we build up the result message. "Rock crushes Scissors. You Win!", etc.
        NSString *winnerString = [[game winner] description];
        NSString *loserString = [[game loser] description];
        NSString *resultString = [self resultString:game];
        
        NSString *wholeString = [NSString stringWithFormat:@"%@ %@ %@ %@ %@", winnerString, @"defeats", loserString, @".", resultString];
        
        return wholeString;
    }
}
@end

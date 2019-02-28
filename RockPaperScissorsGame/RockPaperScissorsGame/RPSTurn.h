//
//  RPSTurn.h
//  RockPaperScissors
//
//  Created by ABHISHEK DAGWAR on 2/27/19.
//  Copyright © 2019 self. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Move) {
    Rock,
    Paper,
    Scissors,
    Invalid
};

@interface RPSTurn : NSObject

@property (nonatomic) Move move;

-(instancetype)initWithMove:(Move)move;
-(Move)generateMove;
-(BOOL)defeat:(RPSTurn*)opponent;
-(NSString*)description;

@end

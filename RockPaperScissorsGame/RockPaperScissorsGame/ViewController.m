//
//  ViewController.m
//  SampleAnimatedButtons
//
//  Created by ABHISHEK DAGWAR on 2/28/19.
//  Copyright © 2019 self. All rights reserved.
//

#import "ViewController.h"
#import "RPSController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//pragma mark : Button Actions

- (IBAction)buttonRock:(UIButton *)sender {
    [self playerTurn:Rock];
}
- (IBAction)buttonPaper:(UIButton *)sender {
    [self playerTurn:Paper];
}
- (IBAction)buttonScissors:(UIButton *)sender {
    [self playerTurn:Scissors];
}

-(void)playerTurn:(Move)move {
    RPSController *controller = [[RPSController alloc] init];
    [controller throwDown:move];
    NSString *resultMessage = [controller messageForGame:controller.game];
    NSLog(@"%@", resultMessage);
    self.resultLabel.text = resultMessage;
}

@end

//
//  ViewController.m
//  TicTacToe
//
//  Created by Mobile Making on 10/23/14.
//  Copyright (c) 2014 Treehouse. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@property (strong, nonatomic) IBOutlet UILabel *label1;
@property (strong, nonatomic) IBOutlet UILabel *label2;
@property (strong, nonatomic) IBOutlet UILabel *label3;
@property (strong, nonatomic) IBOutlet UILabel *label4;
@property (strong, nonatomic) IBOutlet UILabel *label5;
@property (strong, nonatomic) IBOutlet UILabel *label6;
@property (strong, nonatomic) IBOutlet UILabel *label7;
@property (strong, nonatomic) IBOutlet UILabel *label8;
@property (strong, nonatomic) IBOutlet UILabel *label9;
@property (strong, nonatomic) IBOutlet UILabel *whichPlayerLabel;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.whichPlayerLabel.text = @"Player X";
}

-(UILabel *)findLabelUsingPoint: (CGPoint)point
{
    if (CGRectContainsPoint(self.label1.frame, point)) {
        //Set X or O depending on player
        return self.label1;
    
    }else
    {
        return self.label2;
    }
}
- (IBAction)onLabelTapped:(UITapGestureRecognizer *)gesture
{
    CGPoint point = [gesture locationInView:self.view];
    UILabel *selectedSquare =[self findLabelUsingPoint:point];
    selectedSquare.text = @"X";
    if ([self.whichPlayerLabel.text isEqualToString:@"Player X"]) {
        self.whichPlayerLabel.text = @"Player Y";
    }
    else
    {
        self.whichPlayerLabel.text = @"Player X";
    }
}



@end

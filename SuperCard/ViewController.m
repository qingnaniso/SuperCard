//
//  ViewController.m
//  SuperCard
//
//  Created by Qiqingnan on 14-5-5.
//  Copyright (c) 2014年 qiqingnan. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet PlayingCardView *playingCardView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.playingCardView.rank = 13;
    self.playingCardView.suit = @"♥️";
    [self.playingCardView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self.playingCardView action:@selector(tapGusture:)]];
}
- (IBAction)swipeGuesture:(id)sender {
    NSLog(@"into gesture");
    self.playingCardView.faceUp = !self.playingCardView.faceUp;
    NSLog(@"faceUp = %d",self.playingCardView.faceUp);
//    if(!self.playingCardView.faceUp) {
//        
//    } else {
//        self.playingCardView.backgroundColor = nil;
//    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

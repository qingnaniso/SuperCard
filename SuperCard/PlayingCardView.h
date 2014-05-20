//
//  PlayingCardView.h
//  SuperCard
//
//  Created by Qiqingnan on 14-5-6.
//  Copyright (c) 2014年 qiqingnan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSUInteger rank;
@property (nonatomic,strong) NSString *suit;
@property (nonatomic) BOOL faceUp;
- (void)tapGusture:(UITapGestureRecognizer *)gusture;
@end

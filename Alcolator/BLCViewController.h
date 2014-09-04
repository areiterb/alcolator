//
//  BLCViewController.h
//  Alcolator
//
//  Created by ALEJANDRO REITER B on 8/26/14.
//  Copyright (c) 2014 Alejandro Reiter. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BLCViewController;

@protocol BLCDelegate <NSObject>

@optional
- (void)userGotDrunk:(BLCViewController *)controller withAlcoholPercent:(CGFloat)alcPercent;
@end

@interface BLCViewController : UIViewController

@property (weak, nonatomic) UITextField *beerPercentTextField;
@property (weak, nonatomic) UILabel *resultLabel;
@property (weak, nonatomic) UISlider *beerCountSlider;
@property (weak, nonatomic) id<BLCDelegate> delegate;

- (void)buttonPressed:(UIButton *)sender;

@end

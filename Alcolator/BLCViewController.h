//
//  BLCViewController.h
//  Alcolator
//
//  Created by ALEJANDRO REITER B on 8/26/14.
//  Copyright (c) 2014 Alejandro Reiter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BLCViewController : UIViewController

@property (weak, nonatomic) UITextField *beerPercentTextField;
@property (weak, nonatomic) UILabel *resultLabel;
@property (weak, nonatomic) UISlider *beerCountSlider;

- (void)buttonPressed:(UIButton *)sender;

@end

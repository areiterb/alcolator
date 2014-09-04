//
//  BLCMainMenuViewController.m
//  Alcolator
//
//  Created by ALEJANDRO REITER B on 9/3/14.
//  Copyright (c) 2014 Alejandro Reiter. All rights reserved.
//

#import "BLCMainMenuViewController.h"
#import "BLCWhiskeyViewController.h"
#import "BLCViewController.h"

@interface BLCMainMenuViewController ()

@property (weak, nonatomic) UIButton *wineButton;
@property (weak, nonatomic) UIButton *whiskeyButton;

@end

@implementation BLCMainMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) loadView {
    self.view = [[UIView alloc] init];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.view addSubview:button];
    self.wineButton = button;
    
    [self.view addSubview:button];
    self.whiskeyButton = button;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Background color
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    // Tells `wine Button` that when a finger is lifted from the button while still inside its bounds, to call `[self -buttonPressed:]`
    [self.wineButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.whiskeyButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    // Set the title of the button
    [self.wineButton setTitle:NSLocalizedString(@"Wine", @"wine") forState:UIControlStateNormal];
    [self.whiskeyButton setTitle:NSLocalizedString(@"Whiskey", @"whiskey") forState:UIControlStateNormal];
}

- (void) viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    /*
    CGFloat viewWidth = 320;
    CGFloat padding = 20;
    CGFloat itemWidth = viewWidth - padding - padding;
    CGFloat itemHeight = 44;
     */
    
    self.wineButton.frame = CGRectMake(120, 250, 70, 30);
    self.whiskeyButton.frame = CGRectMake(150, 250, 70, 30);
}


- (void) winePressed: (UIButton *) sender {
    BLCViewController *wineVC = [[BLCViewController alloc] init];
    [self.navigationController pushViewController:wineVC animated:YES];
}

- (void) whiskeyPressed: (UIButton *) sender {
    BLCWhiskeyViewController *whiskeyVC = [[BLCWhiskeyViewController alloc] init];
    [self.navigationController pushViewController:whiskeyVC animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

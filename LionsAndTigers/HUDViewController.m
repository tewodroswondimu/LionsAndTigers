//
//  HUDViewController.m
//  LionsAndTigers
//
//  Created by Tewodros Wondimu on 1/15/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "HUDViewController.h"

@interface HUDViewController ()

@end

@implementation HUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)onLionsButtonTapped:(UIButton *)sender
{
    [self.delegate lionsButtonTapped];
}

- (IBAction)onTigersButtonTapped:(UIButton *)sender
{
    [self.delegate tigersButtonTapped];
}

@end

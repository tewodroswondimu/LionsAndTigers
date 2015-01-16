//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Tewodros Wondimu on 1/15/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "ViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"

@interface ViewController () <TopDelegate, HUDDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topContainerLeftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topContainerRightConstraint;
@property TopViewController *topViewController;
@property BOOL showMenu;
@property BOOL cat;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.showMenu = NO;
    self.cat = YES;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"toTopViewControllerSegue"]) {
        UINavigationController *navController = segue.destinationViewController;
        self.topViewController = [navController.viewControllers objectAtIndex:0];
        self.topViewController.delegate = self;
    }
    else if ([segue.identifier isEqualToString:@"toHUDViewControllerSegue"])
    {
        HUDViewController *myHUDViewController = segue.destinationViewController;
        myHUDViewController.delegate = self;
    }
}

- (void)lionsButtonTapped
{
    [self toggleShowMenu];
    self.topViewController.catStatus = YES;
    [self.topViewController.collectionView reloadData];
}

- (void)tigersButtonTapped
{
    [self toggleShowMenu];
    self.topViewController.catStatus = NO;
    [self.topViewController.collectionView reloadData];
//    self.cat = NO;
}

- (void)toggleShowMenu
{
    if (self.showMenu) {
        self.topContainerLeftConstraint.constant -= 150;
    }
    else
    {
        self.topContainerLeftConstraint.constant += 150;
    }
    self.showMenu = !self.showMenu;
}

- (void)topRevealButtonTapped
{
    [self toggleShowMenu];
}

@end

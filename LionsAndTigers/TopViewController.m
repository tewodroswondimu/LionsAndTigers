//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Tewodros Wondimu on 1/15/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "TopViewController.h"
#import "CustomCollectionViewCell.h"
#import "HUDViewController.h"

@interface TopViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property TopViewController *tvc;

@property NSMutableArray *arrayOfLionImages;
@property NSMutableArray *arrayOfTigerImages;
@property NSArray *currentCatImages;

@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *lionImage1 = [UIImage imageNamed:@"lion1"];
    UIImage *lionImage2 = [UIImage imageNamed:@"lion2"];
    UIImage *lionImage3 = [UIImage imageNamed:@"lion3"];
    UIImage *tigerImage1 = [UIImage imageNamed:@"tiger1"];
    UIImage *tigerImage2 = [UIImage imageNamed:@"tiger2"];
    UIImage *tigerImage3 = [UIImage imageNamed:@"tiger3"];
    self.arrayOfLionImages = [[NSMutableArray alloc] initWithObjects:lionImage1, lionImage2, lionImage3, nil];
    self.arrayOfTigerImages = [[NSMutableArray alloc] initWithObjects: tigerImage1, tigerImage2, tigerImage3, nil];
    self.currentCatImages = self.arrayOfLionImages;
    [self.collectionView reloadData];
}

- (IBAction)onClawButtonTapped:(UIBarButtonItem *)sender
{
    [self.delegate topRevealButtonTapped];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    if (self.catStatus) {
        self.currentCatImages = self.arrayOfLionImages;
    }
    else
    {
        self.currentCatImages = self.arrayOfTigerImages;
    }
    cell.imageView.image = [self.currentCatImages objectAtIndex:indexPath.row];
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.currentCatImages.count;
}

@end

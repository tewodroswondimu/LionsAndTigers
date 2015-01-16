//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Tewodros Wondimu on 1/15/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TopDelegate <NSObject>

- (void)topRevealButtonTapped;

@end

@interface TopViewController : UIViewController

@property (nonatomic, weak) id<TopDelegate> delegate;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property BOOL catStatus; 

@end

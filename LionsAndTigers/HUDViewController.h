//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Tewodros Wondimu on 1/15/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUDDelegate <NSObject>

- (void)tigersButtonTapped;
- (void)lionsButtonTapped;

@end

@interface HUDViewController : UIViewController

@property (nonatomic, weak) id<HUDDelegate> delegate;

@end

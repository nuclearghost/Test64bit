//
//  SecondViewController.m
//  Test64bit
//
//  Created by Engineer @wrap on 6/23/14.
//  Copyright (c) 2014 Engineer @wrap. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[SharethroughSDK sharedInstance] placeAdInView:self.placeAdView placementKey:@"8230a997" presentingViewController:self delegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)adView:(id<STRAdView>)adView didFetchAdForPlacementKey:(NSString *)placementKey {
    NSLog(@"Fetched ad for placement %@", placementKey);
}

- (void)adView:(id<STRAdView>)adView didFailToFetchAdForPlacementKey:(NSString *)placementKey {
    NSLog(@"Failed to fetch for placemnet %@", placementKey);
}
@end

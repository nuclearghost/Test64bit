//
//  FirstViewController.m
//  Test64bit
//
//  Created by Engineer @wrap on 6/23/14.
//  Copyright (c) 2014 Engineer @wrap. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[SharethroughSDK sharedInstance] placeAdInView:self.placeAdView placementKey:@"b011b800" presentingViewController:self delegate:self];
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

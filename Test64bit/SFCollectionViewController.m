//
//  SFCollectionViewController.m
//  Test64bit
//
//  Created by Mark Meyer on 6/24/14.
//  Copyright (c) 2014 Engineer @wrap. All rights reserved.
//

#import "SFCollectionViewController.h"

@interface SFCollectionViewController ()

@end

@implementation SFCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionView Datasource
// 1
- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    return 25;
}
// 2
- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
    return 1;
}
// 3
- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    SFCollectionViewCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];

    SharethroughSDK *sdk;
    switch (indexPath.row % 5) {
        case 0:
            sdk = [SharethroughSDK sharedTestSafeInstanceWithAdType:STRFakeAdTypeClickout];
            break;
        case 1:
            sdk = [SharethroughSDK sharedTestSafeInstanceWithAdType:STRFakeAdTypeHostedVideo];
            break;
        case 2:
            sdk = [SharethroughSDK sharedTestSafeInstanceWithAdType:STRFakeAdTypePinterest];
            break;
        case 3:
            sdk = [SharethroughSDK sharedTestSafeInstanceWithAdType:STRFakeAdTypeVine];
            break;
        case 4:
            sdk = [SharethroughSDK sharedTestSafeInstanceWithAdType:STRFakeAdTypeYoutube];
            break;
        default:
            sdk = [SharethroughSDK sharedTestSafeInstanceWithAdType:STRFakeAdTypeClickout];
            break;
    }
    [sdk placeAdInView:cell placementKey:@"e7244b42" presentingViewController:self delegate:self];
    
    return cell;
}

#pragma mark

- (void)adView:(id<STRAdView>)adView didFetchAdForPlacementKey:(NSString *)placementKey {
    NSLog(@"Fetched ad");
}

- (void)adView:(id<STRAdView>)adView didFailToFetchAdForPlacementKey:(NSString *)placementKey {
    NSLog(@"Failed to fetch");
}

@end

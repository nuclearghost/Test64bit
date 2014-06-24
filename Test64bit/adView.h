//
//  adView.h
//  Test64bit
//
//  Created by Mark Meyer on 6/24/14.
//  Copyright (c) 2014 Engineer @wrap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SharethroughSDK/SharethroughSDK.h>

@interface adView : UIView <STRAdView>
@property (strong, nonatomic) IBOutlet UIView *contentView;

@property (weak, nonatomic) IBOutlet UILabel *adTitle;
@property (weak, nonatomic) IBOutlet UILabel *adSponsoredBy;
@property (weak, nonatomic) IBOutlet UILabel *adDescription;
@property (weak, nonatomic) IBOutlet UIImageView *adThumbnail;

@end

//
//  SFTableViewCell.h
//  Test64bit
//
//  Created by Engineer @wrap on 6/23/14.
//  Copyright (c) 2014 Engineer @wrap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SharethroughSDK/SharethroughSDK.h>

@interface SFTableViewCell : UITableViewCell <STRAdView>

@property (weak, nonatomic) IBOutlet UILabel *adTitle;
@property (weak, nonatomic) IBOutlet UILabel *adSponsoredBy;
@property (weak, nonatomic) IBOutlet UIImageView *adThumbnail;

@end

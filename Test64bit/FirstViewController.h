//
//  FirstViewController.h
//  Test64bit
//
//  Created by Engineer @wrap on 6/23/14.
//  Copyright (c) 2014 Engineer @wrap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SharethroughSDK/SharethroughSDK.h>
#import "adView.h"

@interface FirstViewController : UIViewController <STRAdViewDelegate>

@property (weak, nonatomic) IBOutlet adView *placeAdView;

@end

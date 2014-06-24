//
//  adView.m
//  Test64bit
//
//  Created by Mark Meyer on 6/24/14.
//  Copyright (c) 2014 Engineer @wrap. All rights reserved.
//

#import "adView.h"

@implementation adView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)awakeFromNib {
    [[NSBundle mainBundle] loadNibNamed:@"adView" owner:self options:nil];
    [self addSubview: self.contentView];
}
@end

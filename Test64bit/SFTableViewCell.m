//
//  SFTableViewCell.m
//  Test64bit
//
//  Created by Engineer @wrap on 6/23/14.
//  Copyright (c) 2014 Engineer @wrap. All rights reserved.
//

#import "SFTableViewCell.h"

@implementation SFTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

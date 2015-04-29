//
//  RATableViewCell.m
//  Recipe App
//
//  Created by Douglas Voss on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RATableViewCell.h"
#import "RecipesTableViewDataSource.h"

@implementation RATableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style
              reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];

    return self;
}

- (void)awakeFromNib {
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

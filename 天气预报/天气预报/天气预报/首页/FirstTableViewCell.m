//
//  FirstTableViewCell.m
//  test
//
//  Created by 张立远 on 2020/8/4.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "FirstTableViewCell.h"

@implementation FirstTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        _label1 = [[UILabel alloc] init];
        _label2 = [[UILabel alloc] init];
        _label3 = [[UILabel alloc] init];
        _label1.textColor = [UIColor whiteColor];
        _label2.textColor = [UIColor whiteColor];
        _label3.textColor = [UIColor colorWithRed:0.62f green:0.63f blue:0.65f alpha:1.00f];
        self.imageViewz = [UIImageView new];
        self.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        _label1.font = [UIFont systemFontOfSize:23];
        _label2.font = [UIFont systemFontOfSize:23];
        _label3.font = [UIFont systemFontOfSize:23];
        
        [self.contentView addSubview:self.label1];
        [self.contentView addSubview:self.label2];
        [self.contentView addSubview:self.label3];
        [self.contentView addSubview:self.imageViewz];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    _label1.frame = CGRectMake(20, 6, 80, 34);
    _label2.frame = CGRectMake(270, 6, 50, 34);
    _label3.frame = CGRectMake(340, 6, 50, 34);
    self.imageViewz.frame = CGRectMake(188, 6, 34, 34);
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

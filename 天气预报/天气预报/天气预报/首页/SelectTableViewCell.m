//
//  SelectTableViewCell.m
//  天气预报
//
//  Created by 张立远 on 2020/8/7.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "SelectTableViewCell.h"

@implementation SelectTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        self.backgroundColor = [UIColor clearColor];
        _label1 = [[UILabel alloc] init];
        _label2 = [[UILabel alloc] init];
        _label3 = [[UILabel alloc] init];
        _label1.textColor = [UIColor whiteColor];
        _label2.textColor = [UIColor whiteColor];
        _label3.textColor = [UIColor whiteColor];
        _label1.font = [UIFont systemFontOfSize:15];
        _label2.font = [UIFont systemFontOfSize:24];
        _label3.font = [UIFont systemFontOfSize:40];
        
        [self.contentView addSubview:_label1];
        [self.contentView addSubview:_label2];
        [self.contentView addSubview:_label3];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    _label1.frame = CGRectMake(20, 19, 200, 15);
    _label2.frame = CGRectMake(20, 41, 280, 24);
    _label3.frame = CGRectMake(310, 20, 86, 44);
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

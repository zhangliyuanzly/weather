//
//  SecondTableViewCell.m
//  天气预报
//
//  Created by 张立远 on 2020/8/5.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "SecondTableViewCell.h"

@implementation SecondTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        _label1 = [[UILabel alloc] init];
        _label2 = [[UILabel alloc] init];
        _label3 = [[UILabel alloc] init];
        _label4 = [[UILabel alloc] init];
        _label1.textColor = [UIColor colorWithRed:0.62f green:0.63f blue:0.65f alpha:1.00f];
        _label2.textColor = [UIColor colorWithRed:0.62f green:0.63f blue:0.65f alpha:1.00f];
        _label3.textColor = [UIColor whiteColor];
        _label4.textColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        _label1.font = [UIFont systemFontOfSize:15];
        _label2.font = [UIFont systemFontOfSize:15];
        _label3.font = [UIFont systemFontOfSize:26];
        _label4.font = [UIFont systemFontOfSize:26];
        
        [self.contentView addSubview:self.label1];
        [self.contentView addSubview:self.label2];
        [self.contentView addSubview:self.label3];
        [self.contentView addSubview:self.label4];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    _label1.frame = CGRectMake(20, 5, 80, 15);
    _label2.frame = CGRectMake(200, 5, 80, 15);
    _label3.frame = CGRectMake(20, 21, 190, 40);
    _label4.frame = CGRectMake(200, 21, 120, 40);
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

//
//  MainTableView.h
//  天气预报
//
//  Created by 张立远 on 2020/8/7.
//  Copyright © 2020 张立远. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainTableView : UIView<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *requestArray;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSURLSessionDataTask *dataTask;
@property (nonatomic, strong) NSArray *array1;
@property (nonatomic, strong) NSArray *array2;
@property (nonatomic, strong) NSArray *array3;
@property (nonatomic, strong) NSArray *array4;
@property (nonatomic, strong) NSMutableArray *timeArray;
@property (nonatomic, strong) NSMutableArray *weatherArray;
@property (nonatomic, strong) NSMutableArray *tmpArray;

@property (nonatomic, copy) NSString *cond_txt;
@property (nonatomic, copy) NSString *tmp;
@property (nonatomic, copy) NSString *date;
@property (nonatomic, copy) NSString *tmp_max;
@property (nonatomic, copy) NSString *tmp_max2;
@property (nonatomic, copy) NSString *tmp_max3;
@property (nonatomic, copy) NSString *tmp_max4;
@property (nonatomic, copy) NSString *tmp_max5;
@property (nonatomic, copy) NSString *tmp_max6;
@property (nonatomic, copy) NSString *tmp_max7;

@property (nonatomic, copy) NSString *tmp_min;
@property (nonatomic, copy) NSString *tmp_min2;
@property (nonatomic, copy) NSString *tmp_min3;
@property (nonatomic, copy) NSString *tmp_min4;
@property (nonatomic, copy) NSString *tmp_min5;
@property (nonatomic, copy) NSString *tmp_min6;
@property (nonatomic, copy) NSString *tmp_min7;

@property (nonatomic, copy) NSString *cond_txt_d2;
@property (nonatomic, copy) NSString *cond_txt_d3;
@property (nonatomic, copy) NSString *cond_txt_d4;
@property (nonatomic, copy) NSString *cond_txt_d5;
@property (nonatomic, copy) NSString *cond_txt_d6;
@property (nonatomic, copy) NSString *cond_txt_d7;

@property (nonatomic, copy) NSString *sr;
@property (nonatomic, copy) NSString *ss;
@property (nonatomic, copy) NSString *pop;
@property (nonatomic, copy) NSString *hum;
@property (nonatomic, copy) NSString *wind_dir;
@property (nonatomic, copy) NSString *wind_spd;
@property (nonatomic, copy) NSString *fl;
@property (nonatomic, copy) NSString *pcpn;
@property (nonatomic, copy) NSString *pres;
@property (nonatomic, copy) NSString *vis;
@property (nonatomic, copy) NSString *uv_index;
@property (nonatomic, copy) NSString *place;

- (void)setRequestArray:(NSMutableArray *)requestArray page:(int)page;
@end

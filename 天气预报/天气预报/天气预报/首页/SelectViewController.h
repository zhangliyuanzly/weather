//
//  SelectViewController.h
//  天气预报
//
//  Created by 张立远 on 2020/8/6.
//  Copyright © 2020 张立远. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectViewController : UIViewController

@property(nonatomic,strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *passArray;
@property (nonatomic, strong) NSURLSessionDataTask *dataTask;
@property (nonatomic, strong) NSMutableArray *tmpArray;
@property (nonatomic, strong) NSMutableArray *timeArray;

@end

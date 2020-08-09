//
//  HomepageViewController.h
//  天气预报
//
//  Created by 张立远 on 2020/8/7.
//  Copyright © 2020 张立远. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomepageViewController : UIViewController

@property(nonatomic,strong) UITableView *tableView;
@property (strong,nonatomic)UIScrollView *scrollview; 
@property (strong,nonatomic)UIPageControl *pagecontrol;
@property (strong,nonatomic)NSMutableArray *receiveArray;
@property (nonatomic) NSInteger page;

@end

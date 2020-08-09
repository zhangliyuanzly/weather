//
//  SearchViewController.h
//  天气预报
//
//  Created by 张立远 on 2020/8/5.
//  Copyright © 2020 张立远. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SearchViewController;
@protocol SearchViewControllerDelegate <NSObject>
- (void)pass:(NSMutableArray*)array;
@end

@interface SearchViewController : UIViewController

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UISearchController *searchController;
@property (nonatomic, strong) NSMutableArray *results;
@property (nonatomic, strong) NSURLSessionDataTask *dataTask;
@property (nonatomic, strong) NSMutableArray *receiveArray;

@property(nonatomic, weak)id <SearchViewControllerDelegate> delegate;
@end

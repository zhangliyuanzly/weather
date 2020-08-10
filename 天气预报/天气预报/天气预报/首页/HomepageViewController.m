//
//  HomepageViewController.m
//  天气预报
//
//  Created by 张立远 on 2020/8/7.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "HomepageViewController.h"
#import "MainTableView.h"

@interface HomepageViewController ()<UIScrollViewDelegate>

@end

@implementation HomepageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置状态栏为白色
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"back.jpg"]];
    
    //设置底部视图
    UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(0, 630, 414, 30)];
    bottomView.backgroundColor = [UIColor clearColor];
    
    UIButton *bottomButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [bottomButton setImage:[UIImage imageNamed:@"按钮"] forState:UIControlStateNormal];
    bottomButton.frame = CGRectMake(340, 7, 30, 30);
    [bottomButton addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [bottomView addSubview:bottomButton];
    [self.view addSubview:bottomView];
    
    if(_receiveArray == nil){
        _receiveArray = [[NSMutableArray alloc] init];
    }
    
    self.scrollview = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 380, 620)];
    self.scrollview.contentSize = CGSizeMake(_receiveArray.count*self.view.frame.size.width, 0);
    self.scrollview.contentOffset = CGPointMake((self.page)*self.view.frame.size.width, 0);
    self.scrollview.pagingEnabled = YES;//设置滚动视图可以进行分页
    self.scrollview.directionalLockEnabled = YES;
    self.scrollview.bounces = NO;

    self.scrollview.delegate = self;
    self.scrollview.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"back.jpg"]];
    
    for(int i = 0; i < _receiveArray.count; i++){
        MainTableView *view = [[MainTableView alloc] initWithFrame:CGRectMake(370 * i, -50, 370, 750)];
       //view.modalPresentationStyle = UIModalPresentationFullScreen;
        [view setRequestArray:_receiveArray page:i];
        [self.scrollview addSubview:view];
    }
    
    [self.view addSubview:self.scrollview];
    
    //157, 7, 100, 30
    self.pagecontrol = [[UIPageControl alloc]init];
    self.pagecontrol.frame = CGRectMake(157, 7, 100, 30);
    self.pagecontrol.numberOfPages = _receiveArray.count;
    self.pagecontrol.currentPage  = self.page;
    [self.pagecontrol addTarget:self action:@selector(pageControlChanged:) forControlEvents:UIControlEventValueChanged];
    [bottomView addSubview:self.pagecontrol];
    self.view.backgroundColor = [UIColor clearColor];


}


-(void)pageControlChanged:(UIPageControl*)sender
{
    
     NSLog(@"%ld",sender.currentPage);
     CGRect frame;
     frame.origin.x = self.scrollview.frame.size.width * sender.currentPage;
     frame.origin.y = 0;
     frame.size = self.scrollview.frame.size;
     [self.scrollview scrollRectToVisible:frame animated:YES];
    
}


-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSInteger currentPage = (int)(scrollView.contentOffset.x) / (int)(self.view.frame.size.width);
    self.pagecontrol.currentPage = currentPage;
}

 
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)click{
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

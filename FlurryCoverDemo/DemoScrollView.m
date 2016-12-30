//
//  DemoScrollView.m
//  FlurryCoverDemo
//
//  Created by 杨晴贺 on 24/12/2016.
//  Copyright © 2016 silence. All rights reserved.
//

#import "DemoScrollView.h"
#import "UIScrollView+SIFlurryCover.h"

@implementation DemoScrollView{
    UIScrollView *_scrollView ;
}

- (void)viewDidLoad{
    [super viewDidLoad] ;
    
    self.title = NSStringFromClass([self class]) ;
    
    if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]) {
        [self setEdgesForExtendedLayout:UIRectEdgeNone];
    }
    if ([self respondsToSelector:@selector(setAutomaticallyAdjustsScrollViewInsets:)]) {
        [self setAutomaticallyAdjustsScrollViewInsets:NO];
    }
    
    
    self.view.backgroundColor = [UIColor whiteColor] ;
    _scrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds] ;
    [_scrollView setContentSize:CGSizeMake(self.view.frame.size.width, 1000)] ;
    [_scrollView addFlurryCoverWithImage:[UIImage imageNamed:@"cover"]] ;
    [self.view addSubview:_scrollView] ;
    
    UIButton *button  = [[UIButton alloc]initWithFrame:CGRectMake(20, 200, 100, 50)] ;
    [button setTitle:@"测试按钮" forState:UIControlStateNormal] ;
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal] ;
    [_scrollView addSubview:button] ;
    
}

-(void)dealloc{
    [_scrollView removeFlurryCoverView] ;
}


@end

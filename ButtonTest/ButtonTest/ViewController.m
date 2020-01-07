//
//  ViewController.m
//  ButtonTest
//
//  Created by LBJames on 2020/1/7.
//  Copyright © 2020 LBJames. All rights reserved.
//

#import "ViewController.h"
#import "ButtonTestHeaderView.h"
@interface ViewController ()<ButtonTestHeaderViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    ButtonTestHeaderView *headerView = [[ButtonTestHeaderView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 45)];
    headerView.delegate = self;
    [self.view addSubview:headerView];
    
}

- (void)selectButtonTestHeaderViewWithButtonTitle:(NSString *)title{
    NSLog(@"%@",title);
}

@end

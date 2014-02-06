//
//  BadgeViewTestViewController.m
//  AyalBadgeView
//
//  Created by Ayal Nilupa Herath on 2/6/14.
//  Copyright (c) 2014 Ayal Nilupa Herath. All rights reserved.
//

#import "BadgeViewTestViewController.h"

@interface BadgeViewTestViewController ()

@end

@implementation BadgeViewTestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    UIButton *buttionOne = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage *buttionOneImage = [UIImage imageNamed:@"ic_actionbar_events_active.png"];
    UIImage *buttionOneTaptedImage = [UIImage imageNamed:@"ic_actionbar_events_active.png"];
    [buttionOne setBackgroundImage:buttionOneImage forState:UIControlStateNormal];
    [buttionOne setBackgroundImage:buttionOneTaptedImage forState:UIControlStateHighlighted];
    [buttionOne setBackgroundImage:buttionOneTaptedImage forState:UIControlStateSelected];
    buttionOne.frame = CGRectMake(100, 100, 40, 40);
    [buttionOne setTitle:@"" forState:UIControlStateNormal];
    [self.view addSubview:buttionOne];
    
    AyalBadgeView *ayalBadgeView = [[AyalBadgeView alloc] initWithFrame:CGRectMake(20, 0, 16, 16) parentView:buttionOne];
    ayalBadgeView.badgeNumber = 8;
    //ayalBadgeView.badgeTextColor = [UIColor blackColor];
    //ayalBadgeView.badgeTextFont = [UIFont fontWithName:@"HelveticaNeue-Light" size:10];
    
    UIButton *buttionTwo = [UIButton buttonWithType:UIButtonTypeCustom];
    buttionTwo.frame = CGRectMake(100, 150, 150, 40);
    buttionTwo.backgroundColor = [UIColor grayColor];
    [buttionTwo setTitle:@"My Button" forState:UIControlStateNormal];
    [self.view addSubview:buttionTwo];
    
    AyalBadgeView *ayalBadgeViewButton = [[AyalBadgeView alloc] initWithFrame:CGRectMake(140, -10, 16, 16) parentView:buttionTwo];
    ayalBadgeViewButton.badgeNumber = 8;
    
    UILabel *myLable = [[UILabel alloc]initWithFrame:CGRectMake(100, 250, 150, 40)];
    myLable.text=@"My lable";
    myLable.backgroundColor = [UIColor greenColor];
    [self.view addSubview:myLable];
    
    AyalBadgeView *ayalBadgeViewForLable = [[AyalBadgeView alloc] initWithFrame:CGRectMake(100, 10, 16, 16) parentView:myLable];
    ayalBadgeViewForLable.badgeNumber = 8;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

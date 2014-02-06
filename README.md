AyalBadgeView
=============
TAyalBadgeViewcan be applied, to any view. You can simply create object of AyalBadgeView with the parent view, 
which you want to display the badge number and the location of the badge number.

    UIButton *buttionTwo = [UIButton buttonWithType:UIButtonTypeCustom];
    buttionTwo.frame = CGRectMake(100, 150, 150, 40);
    buttionTwo.backgroundColor = [UIColor grayColor];
    [buttionTwo setTitle:@"My Button" forState:UIControlStateNormal];
    [self.view addSubview:buttionTwo];
    
    AyalBadgeView *ayalBadgeViewButton = [[AyalBadgeView alloc] initWithFrame:CGRectMake(140, -10, 16, 16) parentView:buttionTwo];
    ayalBadgeViewButton.badgeNumber = 8;

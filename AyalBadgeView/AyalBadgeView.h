//
//  TLNumberBadgeView.h
//  TrivialLife
//
//  Created by Ayal Nilupa Herath on 1/8/14.
//  Copyright (c) 2014 Unicorn Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AyalBadgeView : UIView

-(id)initWithFrame:(CGRect)frame parentView :(UIView*) parentView;

@property (nonatomic, strong) UIColor *badgeTextColor;

@property (nonatomic, strong) UIFont *badgeTextFont;

@property (nonatomic, strong) UIImageView *badgeImageView;

@property (nonatomic, strong) UILabel *badgeTextLable;

@property (nonatomic, assign) NSInteger badgeNumber;


@end

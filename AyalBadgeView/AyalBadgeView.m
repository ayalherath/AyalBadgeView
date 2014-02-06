//
//  TLNumberBadgeView.m
//
//  Created by Ayal Nilupa Herath on 1/8/14.
//

#import "AyalBadgeView.h"

static const CGFloat width = 16.0f;
static const CGFloat hight = 16.0f;

@implementation AyalBadgeView


- (id)initWithFrame:(CGRect)frame parentView :(UIView*) parentView;
{
    self = [super initWithFrame:CGRectMake(frame.origin.x, frame.origin.y, width, hight)];
    if (self) {
        // Initialization code
        _badgeImageView = [[UIImageView alloc] initWithFrame:frame];
        _badgeImageView.image = [UIImage imageNamed:@"Notification_badgeIcon.png"];
        _badgeTextLable =[[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, hight)];
        _badgeTextLable.textAlignment = NSTextAlignmentCenter;
        _badgeTextLable.backgroundColor = [UIColor clearColor];
        _badgeTextLable.textColor = [UIColor whiteColor];
        [_badgeImageView addSubview:_badgeTextLable];
        [parentView addSubview:_badgeImageView];
    }
    return self;
}

-(void)setBadgeTextColor:(UIColor *)badgeTextColor
{
    _badgeTextLable.textColor = badgeTextColor;
    [self setNeedsDisplay];
}

-(void)setBadgeTextFont:(UIFont *)badgeTextFont
{
    _badgeTextLable.font = badgeTextFont;
    [self setNeedsDisplay];
}

-(void)setBadgeNumber:(NSInteger)badgeNumber
{
    if(badgeNumber<10)
        _badgeTextLable.frame =CGRectMake(0, 0, width, hight);
    else
        _badgeTextLable.frame =CGRectMake(-0.5, 0, width, hight);
    
    if(badgeNumber<100)
        _badgeTextLable.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:10];
    else
        _badgeTextLable.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:8];
    
    _badgeTextLable.text = [NSString stringWithFormat:@"%d",badgeNumber];
    [self setNeedsDisplay];
}


@end

//
//  menButton.m
//  weiBoButton
//
//  Created by 李勇猛 on 16/3/24.
//  Copyright © 2016年 李勇猛. All rights reserved.
//

#import "menButton.h"
#define kImageRatio 0.8
@implementation menButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setUp];
    }
    return self;
}

- (void)setHighlighted:(BOOL)highlighted{}

- (void)setUp
{
    self.imageView.contentMode = UIViewContentModeCenter;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}

// 以后如果通过代码设置子控件的位置，一般都是在layoutSubviews里面去写
// layoutSubviews什么时候调用，只要父控件的frame一改变就会调用layoutSubviews，重新布局子控件
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // UIImageView
    CGFloat imageX = 0;
    CGFloat imageY = 0;
    CGFloat imageW = self.bounds.size.width;
    CGFloat imageH = self.bounds.size.height * kImageRatio;
    self.imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
    
    
    // UILabel
    CGFloat labelY = imageH;
    CGFloat labelH = self.bounds.size.height - labelY;
    self.titleLabel.frame = CGRectMake(imageX, labelY, imageW, labelH);
    
}

@end

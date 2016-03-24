//
//  weiBoView.m
//  weiBoButton
//
//  Created by 李勇猛 on 16/3/23.
//  Copyright © 2016年 李勇猛. All rights reserved.
//

#import "weiBoView.h"

#define widths self.bounds.size.width

#define heights self.bounds.size.height

#define bili 0.8


@interface weiBoView ()

//显示文字图片
@property (nonatomic,strong) UIImageView * titiLeImage;
//显示头像图片
@property (nonatomic,strong) UIImageView * avatarImage;
//显示文字
@property (nonatomic,strong) UILabel * titLe;

@property (nonatomic,strong) UIImageView *screenImaget;

@end
@implementation weiBoView



+ (instancetype)weiBoComeView{

    
    return [[self alloc]init];

}


- (UIImageView *)screenImaget{

    if (_screenImaget ==nil) {
        _screenImaget = [[UIImageView alloc]init];
        _screenImaget.image = self.screenImage;
        [self addSubview:_screenImaget];
    }
    return _screenImaget;

}

- (UIImageView *)titiLeImage{
    if (_titiLeImage ==nil) {
        _titiLeImage = [[UIImageView alloc]init];
        _titiLeImage.image = self.titiImage;
    
        [self.screenImaget addSubview:_titiLeImage];
        
    }
    return _titiLeImage;
}


- (UIImageView *)avatarImage{

    if (_avatarImage == nil) {
        _avatarImage = [[UIImageView alloc]init];
        _avatarImage.image= self.iAvatarImage;
        
        [self.screenImaget addSubview:_avatarImage];
    }

    return _avatarImage;
}

- (UILabel *)titLe{

    if (_titLe ==nil) {
        _titLe = [[UILabel alloc]init];
        _titLe.text = self.title;
        _titLe.textColor = [UIColor blackColor];
        [self.screenImaget addSubview:_titLe];
    }
    return _titLe;

}

- (instancetype)initWithFrame:(CGRect)frame{

    if (self = [super initWithFrame:frame]) {
       
       
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    NSLog(@"%f---",widths);
    CGFloat x = widths * 0.3;
    CGFloat y = heights * 0.1;
    CGFloat titLeImageW = widths * 0.4;
    CGFloat titLeImageH = heights * 0.14;
    
    self.titiLeImage.frame = CGRectMake(x, y, widths * 0.3, titLeImageH);
    self.avatarImage.frame =  CGRectMake(x, y, titLeImageW, heights * 0.2);
    self.avatarImage.layer.cornerRadius =widths * 0.3/2;
    self.avatarImage.layer.masksToBounds = YES;
    self.avatarImage.transform = CGAffineTransformMakeTranslation(0, 50);
//    CGAffineTransform transFormr =CGAffineTransformMakeTranslation(0, 50);
//    transFormr = CGAffineTransformRotate(transFormr, 180);
//    transFormr =CGAffineTransformScale(transFormr, 1.5, 1.5);
//    self.avatarImage.transform = transFormr;
    self.titLe.frame = CGRectMake(x+30, titLeImageH +100, titLeImageW, heights * 0.1);
    self.screenImaget.frame =self.bounds;
    self.avatarImage.hidden = YES;
    self.titLe.hidden = YES;
    [UIView animateWithDuration:2.0 animations:^{
        self.titiLeImage.alpha = 0;
    } completion:^(BOOL finished) {
        self.avatarImage.hidden = NO;
         [UIView animateWithDuration:2.0 delay:0 usingSpringWithDamping:0.4 initialSpringVelocity:0 options:UIViewAnimationOptionCurveLinear animations:^{
             self.avatarImage.transform = CGAffineTransformIdentity;

         } completion:^(BOOL finished) {
             
             self.titLe.hidden = NO;
             self.titLe.alpha = 0;
             [UIView animateWithDuration:1.5 animations:^{
                 self.titLe.alpha =1;
             } completion:^(BOOL finished) {
                 [self removeFromSuperview];
                 
             }];
             
         }];
        
    }];
    
}

- (void)didMoveToSuperview{

    [super didMoveToSuperview];
    
   

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

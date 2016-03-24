//
//  weiBoView.h
//  weiBoButton
//
//  Created by 李勇猛 on 16/3/23.
//  Copyright © 2016年 李勇猛. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface weiBoView : UIView

/*
    文字
 
 **/
@property (nonatomic,strong) NSString * title;
/*
 文字图片
 
 **/
@property (nonatomic,strong) UIImage * titiImage;
/*
 头像图片
 
 **/
@property (nonatomic,strong) UIImage * iAvatarImage;

@property (nonatomic,strong) UIImage * screenImage;

/*
 
 
 
 初始化
 
 **/
+ (instancetype)weiBoComeView;



@end

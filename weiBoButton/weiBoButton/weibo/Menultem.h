//
//  Menultem.h
//  weiBoButton
//
//  Created by 李勇猛 on 16/3/24.
//  Copyright © 2016年 李勇猛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Menultem : NSObject


@property (nonatomic, strong) NSString *title;


@property (nonatomic, strong) UIImage *image;


+ (instancetype)itemWithTitle:(NSString *)title image:(UIImage *)image;
@end

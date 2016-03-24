//
//  Menultem.m
//  weiBoButton
//
//  Created by 李勇猛 on 16/3/24.
//  Copyright © 2016年 李勇猛. All rights reserved.
//

#import "Menultem.h"

@implementation Menultem

+ (instancetype)itemWithTitle:(NSString *)title image:(UIImage *)image
{
    Menultem *itme = [[self alloc] init];
    
    itme.title = title;
    itme.image = image;
    
    return itme;
}

@end

//
//  ViewController.m
//  weiBoButton
//
//  Created by 李勇猛 on 16/3/23.
//  Copyright © 2016年 李勇猛. All rights reserved.
//

#import "ViewController.h"
#import "weiBoView.h"
#import "weiBoViewController.h"
#import "Menultem.h"


@interface ViewController ()

@property (nonatomic,strong) UIButton * btn;

@property (nonatomic,strong) weiBoViewController * vc;
@end

@implementation ViewController


- (UIButton *)btn{
    if (_btn ==nil) {
        _btn = [UIButton buttonWithType:UIButtonTypeCustom];
        _btn.frame = CGRectMake(200, 200, 100, 100);
        [_btn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
        [_btn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
        [_btn addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchUpInside];
       
    }
    return _btn;
}

- (weiBoViewController *)vc{
    if (_vc ==nil) {
        _vc = [[weiBoViewController alloc]init];

    }

    return _vc;
}

- (void)press{

    [self presentViewController:self.vc animated:YES completion:^{
        
    }];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%s",__func__);
    // Do any additional setup after loading the view, typically from a nib.
    
    // 创建模型对象
    Menultem *item = [Menultem itemWithTitle:@"点评" image:[UIImage imageNamed:@"tabbar_compose_review"]];
    Menultem *item1 = [Menultem itemWithTitle:@"更多" image:[UIImage imageNamed:@"tabbar_compose_more"]];
    Menultem *item2 = [Menultem itemWithTitle:@"拍摄" image:[UIImage imageNamed:@"tabbar_compose_camera"]];
    Menultem *item3 = [Menultem itemWithTitle:@"相册" image:[UIImage imageNamed:@"tabbar_compose_photo"]];
    Menultem *item4 = [Menultem itemWithTitle:@"文字" image:[UIImage imageNamed:@"tabbar_compose_idea"]];
    Menultem *item5 = [Menultem itemWithTitle:@"签到" image:[UIImage imageNamed:@"tabbar_compose_review"]];
     Menultem *item6 = [Menultem itemWithTitle:@"签到" image:[UIImage imageNamed:@"tabbar_compose_review"]];
     Menultem *item7 = [Menultem itemWithTitle:@"签到" image:[UIImage imageNamed:@"tabbar_compose_review"]];
   
    self.vc.itmes = @[item,item1,item2,item3,item4,item5];
    
    self.vc.itmest = @[item6,item7];
   
    self.view.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.btn];
}


@end

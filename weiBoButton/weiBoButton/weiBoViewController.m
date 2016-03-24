//
//  weiBoViewController.m
//  weiBoButton
//
//  Created by 李勇猛 on 16/3/23.
//  Copyright © 2016年 李勇猛. All rights reserved.
//

#import "weiBoViewController.h"
#import "Menultem.h"
#import "menButton.h"

@interface weiBoViewController ()
@property (nonatomic,strong)NSMutableArray * itmeButtons;
@property (nonatomic,strong)NSMutableArray  * arr;

@ property (nonatomic,strong) NSTimer * timer;
@property (nonatomic,assign) int btnIndex;
@end

@implementation weiBoViewController

- (NSArray *)itmes{

    if (_itmeButtons ==nil) {
        _itmeButtons = [[NSMutableArray alloc]init];
    
    }
    return _itmes;

}

- (NSMutableArray *)arr{

    if (_arr ==nil) {
        _arr = [[NSMutableArray alloc]init];
    }
    return _arr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(timerr) userInfo:nil repeats:YES];
    [self creButton];
    [self buttonB];
}

- (void)timerr{
    
    if (_btnIndex ==self.itmeButtons.count) {
        [_timer invalidate];
        return;
    }
    
    UIButton * btn = self.itmeButtons[_btnIndex];
    
    [self timerButton:btn];
    _btnIndex++;

}

- (void)timerButton:(UIButton *)btn{

    [UIView animateWithDuration:0.8 delay:0 usingSpringWithDamping:0.7 initialSpringVelocity:0 options:UIViewAnimationOptionAllowAnimatedContent  animations:^{
        btn.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
    }];

}

- (void)creButton{
    
    int col = 0;
    int row = 0;
    int cols = 3;
    CGFloat wH = 100;
    CGFloat y = 0;
    CGFloat x  =0;
    //这是算 每个按钮之间的间距
    CGFloat jian = ([UIScreen mainScreen].bounds.size.width - wH * 3) / (cols +1);
    
    
    for (int i = 0; i<self.itmes.count; i++) {
        col = i % cols;
        row = i / cols;
        y = 300;
        x = jian + (jian +wH) * col;
        y = y + (jian +wH) *row;
        
        menButton * btn = [menButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(x, y, wH, wH);
     //   btn.backgroundColor = [UIColor greenColor];
        Menultem * itme = _itmes[i];
        [btn setImage:itme.image forState:UIControlStateNormal];
        [btn setTitle:itme.title forState:UIControlStateNormal];
        btn.transform = CGAffineTransformMakeTranslation(0, self.view.frame.size.height);
        btn.tag = i+100;
        [btn addTarget:self action:@selector(presss:) forControlEvents:UIControlEventTouchDown];
        [btn addTarget:self action:@selector(presss1:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.itmeButtons addObject:btn];
        [self.view addSubview:btn];
        
    }
   
}

- (void)presss:(UIButton *)btn{

    [UIView animateWithDuration:0.5 animations:^{
        btn.transform = CGAffineTransformMakeScale(1.2, 1.2);
        
    } completion:^(BOOL finished) {
        if (btn.tag == 105) {
            
            for (UIButton *btn in self.itmeButtons) {
                [UIView animateWithDuration:0.5 animations:^{
                    btn.transform = CGAffineTransformMakeTranslation(-self.view.frame.size.width, 0);
                    for (UIButton * btnn in self.arr) {
                        [UIView animateWithDuration:0.2 animations:^{
                            btnn.transform = CGAffineTransformIdentity;
                        } completion:^(BOOL finished) {
                            
                        }];
                        // btnn.transform = CGAffineTransformIdentity;
                    }
                } completion:^(BOOL finished) {
                    
                }];
                
            }
        }

        
    }];

}
- (void)presss1:(UIButton *)btn{

    [UIView animateWithDuration:0.5 animations:^{
        btn.transform = CGAffineTransformMakeScale(2.0, 2.0);
        btn.alpha = 0;
        NSLog(@"%d",btn.tag);
    } completion:^(BOOL finished) {
        
        
    }];

}


- (void)buttonB{
    int col = 0;
    int row = 0;
    int cols = 3;
    CGFloat wH = 100;
    CGFloat y = 0;
    CGFloat x  =0;
    //这是算 每个按钮之间的间距
    CGFloat jian = ([UIScreen mainScreen].bounds.size.width - wH * 3) / (cols +1);
    for (int i = 0; i<self.itmest.count; i++) {
        col = i % cols;
        row = i / cols;
        y = 300;
        x = jian + (jian +wH) * col;
        y = y + (jian +wH) *row;
        
        menButton * btn = [menButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(x, y, wH, wH);
        //   btn.backgroundColor = [UIColor greenColor];
       Menultem * itme = _itmest[i];
        [btn setImage:itme.image forState:UIControlStateNormal];
        [btn setTitle:itme.title forState:UIControlStateNormal];
        btn.transform = CGAffineTransformMakeTranslation(self.view.frame.size.width, 0);
        btn.tag = i+100;
//         [btn addTarget:self action:@selector(prests:) forControlEvents:UIControlEventTouchDown];
//         [btn addTarget:self action:@selector(prests1:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.arr addObject:btn];
        [self.view addSubview:btn];
    }
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

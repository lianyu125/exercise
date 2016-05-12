//
//  ViewController.m
//  cocoapods
//
//  Created by ZLY on 16/5/9.
//  Copyright © 2016年 ZLY. All rights reserved.
//

#import "ViewController.h"
#import "UIControl+ZLYBlock.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIControl * control = [[UIControl alloc] initWithFrame:CGRectMake(0, 0,150, 200)];
    control.backgroundColor = [UIColor orangeColor];
    control.hyb_touchUpBlock = ^(id sender){
        NSLog(@"被点了");
    };
    [self.view addSubview:control];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

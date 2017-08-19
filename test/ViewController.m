//
//  ViewController.m
//  test
//
//  Created by 李晓飞 on 2017/8/19.
//  Copyright © 2017年 xiaofei. All rights reserved.
//

#import "ViewController.h"
#import "blockBtnView.h"
#import "delegateBtnView.h"

@interface ViewController ()<ClickBtnDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createBtnView];
}

- (void)createBtnView {
    blockBtnView *btn1View = [[blockBtnView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn1View.backgroundColor = [UIColor cyanColor];
    [btn1View setBtnBlock:^(UIButton *btn) {
        NSLog(@"点击了block测试按钮");
    }];
    [self.view addSubview:btn1View];
    
    delegateBtnView *btn2View = [[delegateBtnView alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
    btn2View.delegate = self;
    btn2View.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:btn2View];
}

#pragma mark    ----ClickBtnDelegate
- (void)clickButton:(UIButton *)sender {
    NSLog(@"点击了代理测试按钮");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

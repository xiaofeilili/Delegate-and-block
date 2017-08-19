//
//  btnView1.m
//  test
//
//  Created by 李晓飞 on 2017/8/19.
//  Copyright © 2017年 xiaofei. All rights reserved.
//

#import "blockBtnView.h"

@implementation blockBtnView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(frame.size.width/2.0, frame.size.height/2.0, 50, 50);
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
    }
    return self;
}

- (void)btnClick:(UIButton *)sender {
    if (_btnBlock) {
        _btnBlock(sender);
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

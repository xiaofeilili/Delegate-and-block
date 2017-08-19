//
//  delegateBtnView.h
//  test
//
//  Created by 李晓飞 on 2017/8/19.
//  Copyright © 2017年 xiaofei. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ClickBtnDelegate <NSObject>

- (void)clickButton:(UIButton *)sender;

@end

@interface delegateBtnView : UIView

@property (nonatomic, assign)id<ClickBtnDelegate> delegate;

@end

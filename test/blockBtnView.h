//
//  btnView1.h
//  test
//
//  Created by 李晓飞 on 2017/8/19.
//  Copyright © 2017年 xiaofei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface blockBtnView : UIView

@property (nonatomic, strong)void (^btnBlock)(UIButton *);

@end

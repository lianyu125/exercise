//
//  UIControl+ZLYBlock.h
//  cocoapods
//
//  Created by ZLY on 16/5/10.
//  Copyright © 2016年 ZLY. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^HYBTouchUpBlock)(id sender);
@interface UIControl (ZLYBlock)
@property (nonatomic, copy) HYBTouchUpBlock hyb_touchUpBlock;
@end

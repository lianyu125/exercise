//
//  UIControl+ZLYBlock.m
//  cocoapods
//
//  Created by ZLY on 16/5/10.
//  Copyright © 2016年 ZLY. All rights reserved.
//

#import "UIControl+ZLYBlock.h"
#import <objc/runtime.h>
static const void * sHYBUIControlTouchUpEventBlockKey = "sHYBUIControlTouchUpEventBlockKey";
@implementation UIControl (ZLYBlock)
- (void)setHyb_touchUpBlock:(HYBTouchUpBlock)hyb_touchUpBlock {
    objc_setAssociatedObject(self,
                             sHYBUIControlTouchUpEventBlockKey,
                             hyb_touchUpBlock,
                             OBJC_ASSOCIATION_COPY);
    
    [self removeTarget:self
                action:@selector(hybOnTouchUp:)
      forControlEvents:UIControlEventTouchUpInside];
    
    if (hyb_touchUpBlock) {
        [self addTarget:self
                 action:@selector(hybOnTouchUp:)
       forControlEvents:UIControlEventTouchUpInside];
    }
}

- (HYBTouchUpBlock)hyb_touchUpBlock {
    return objc_getAssociatedObject(self, sHYBUIControlTouchUpEventBlockKey);
}

- (void)hybOnTouchUp:(UIButton *)sender {
    HYBTouchUpBlock touchUp = self.hyb_touchUpBlock;
    
    if (touchUp) {
        touchUp(sender);
    }
}
@end

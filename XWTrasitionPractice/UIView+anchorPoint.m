//
//  UIView+anchorPoint.m
//  XWTrasitionPractice
//
//  Created by wazrx on 15/11/25.
//  Copyright © 2015年 YouLoft_MacMini. All rights reserved.
//

#import "UIView+anchorPoint.h"

@implementation UIView (anchorPoint)

- (void)setAnchorPointTo:(CGPoint)point{
    self.frame = CGRectOffset(self.frame, (point.x - self.layer.anchorPoint.x) * self.frame.size.width, (point.y - self.layer.anchorPoint.y) * self.frame.size.height);
    self.layer.anchorPoint = point;
}

@end

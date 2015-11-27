//
//  XWCircleSpreadTransition.h
//  XWTrasitionPractice
//
//  Created by YouLoft_MacMini on 15/11/25.
//  Copyright © 2015年 YouLoft_MacMini. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, XWCircleSpreadTransitionType) {
    XWCircleSpreadTransitionTypePresent = 0,
    XWCircleSpreadTransitionTypeDismiss
};

@interface XWCircleSpreadTransition : NSObject<UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign) XWCircleSpreadTransitionType type;

+ (instancetype)transitionWithTransitionType:(XWCircleSpreadTransitionType)type;
- (instancetype)initWithTransitionType:(XWCircleSpreadTransitionType)type;
@end

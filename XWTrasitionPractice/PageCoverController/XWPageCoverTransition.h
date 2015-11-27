//
//  XWPageCoverTransition.h
//  XWTrasitionPractice
//
//  Created by YouLoft_MacMini on 15/11/24.
//  Copyright © 2015年 YouLoft_MacMini. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, XWPageCoverTransitionType) {
    XWPageCoverTransitionTypePush = 0,
    XWPageCoverTransitionTypePop
};

@interface XWPageCoverTransition : NSObject<UIViewControllerAnimatedTransitioning>
/**
 *  动画过渡代理管理的是push还是pop
 */
@property (nonatomic, assign) XWPageCoverTransitionType type;
/**
 *  初始化动画过渡代理
 * @prama type 初始化pop还是push的代理
 */
+ (instancetype)transitionWithType:(XWPageCoverTransitionType)type;
- (instancetype)initWithTransitionType:(XWPageCoverTransitionType)type;
@end

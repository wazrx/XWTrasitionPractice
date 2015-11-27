//
//  XWPageCoverPushController.h
//  XWTrasitionPractice
//
//  Created by YouLoft_MacMini on 15/11/24.
//  Copyright © 2015年 YouLoft_MacMini. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol XWPageCoverPushControllerDelegate <NSObject>

- (id<UIViewControllerInteractiveTransitioning>)interactiveTransitionForPush;

@end

@interface XWPageCoverPushController : UIViewController<UINavigationControllerDelegate>

@property (nonatomic, assign) id<XWPageCoverPushControllerDelegate> delegate;

@end

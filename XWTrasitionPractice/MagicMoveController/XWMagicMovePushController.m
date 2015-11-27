//
//  ViewControllerOnePushViewController.m
//  trasitionpractice
//
//  Created by YouLoft_MacMini on 15/11/23.
//  Copyright © 2015年 YouLoft_MacMini. All rights reserved.
//

#import "XWMagicMovePushController.h"
#import "XWNaviTransition.h"
#import "XWInteractiveTransition.h"
#import "Masonry.h"
#import "UIView+FrameChange.h"

@interface XWMagicMovePushController ()
@property (nonatomic, strong) XWInteractiveTransition *interactiveTransition;
@end

@implementation XWMagicMovePushController

- (void)dealloc{
    NSLog(@"销毁了");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"神奇移动";
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"zrx4.jpg"]];
    self.imageView = imageView;
    [self.view addSubview:imageView];
    imageView.center = CGPointMake(self.view.center.x, self.view.center.y - self.view.height / 2 + 210);
    imageView.bounds = CGRectMake(0, 0, 280, 280);
    UITextView *textView = [UITextView new];
    textView.text = @"这是类似于KeyNote的神奇移动效果，向右滑动可以通过手势控制POP动画";
    textView.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:textView];
    [textView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsZero).priorityLow();
        make.top.mas_equalTo(imageView.mas_bottom).offset(20);
    }];
    //初始化手势过渡的代理
    self.interactiveTransition = [XWInteractiveTransition interactiveTransitionWithTransitionType:XWInteractiveTransitionTypePop GestureDirection:XWInteractiveTransitionGestureDirectionRight];
    //给当前控制器的视图添加手势
    [_interactiveTransition addPanGestureForViewController:self];
}


- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{
    NSLog(@"%@", NSStringFromCGRect(self.imageView.frame));
    //分pop和push两种情况分别返回动画过渡代理相应不同的动画操作
    return [XWNaviTransition transitionWithType:operation == UINavigationControllerOperationPush ? XWNaviOneTransitionTypePush : XWNaviOneTransitionTypePop];
}

- (id<UIViewControllerInteractiveTransitioning>)navigationController:(UINavigationController *)navigationController interactionControllerForAnimationController:(id<UIViewControllerAnimatedTransitioning>)animationController{
    //手势开始的时候才需要传入手势过渡代理，如果直接点击pop，应该传入空，否者无法通过点击正常pop
    return _interactiveTransition.interation ? _interactiveTransition : nil;
}



@end

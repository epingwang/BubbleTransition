//
//  YPBubbleTransition.h
//  Pods
//
//  Created by 王易平 on 15/5/19.
//
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, YPBubbleTransitionMode) {
    YPBubbleTransitionModePresent,
    YPBubbleTransitionModeDismiss,
};

@interface YPBubbleTransition : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign) CGPoint startPoint;
@property (nonatomic, assign) CGFloat duration;
@property (nonatomic, assign) YPBubbleTransitionMode transitionMode;
@property (nonatomic, strong) UIColor *bubbleColor;

@end

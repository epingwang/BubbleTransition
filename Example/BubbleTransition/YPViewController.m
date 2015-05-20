//
//  YPViewController.m
//  BubbleTransition
//
//  Created by 王易平 on 05/19/2015.
//  Copyright (c) 2014 王易平. All rights reserved.
//

#import "YPViewController.h"
#import <YPBubbleTransition.h>

@interface YPViewController () <UIViewControllerTransitioningDelegate>

@property IBOutlet UIButton *button;
@property (nonatomic, strong) YPBubbleTransition *transition;


@end

@implementation YPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.button.layer.cornerRadius = self.button.frame.size.width/2.0f;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *controller = segue.destinationViewController;
    controller.transitioningDelegate = self;
    controller.modalPresentationStyle = UIModalPresentationCustom;
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    self.transition.transitionMode = YPBubbleTransitionModePresent;
    self.transition.startPoint = self.button.center;
    self.transition.bubbleColor = self.button.backgroundColor;
    return self.transition;
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    self.transition.transitionMode = YPBubbleTransitionModeDismiss;
    self.transition.startPoint = self.button.center;
    self.transition.bubbleColor = self.button.backgroundColor;
    return self.transition;
}

-(YPBubbleTransition *)transition
{
    if (!_transition) {
        _transition = [[YPBubbleTransition alloc] init];
    }
    return _transition;
}

@end

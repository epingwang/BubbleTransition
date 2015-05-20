//
//  YPModalViewController.m
//  BubbleTransition
//
//  Created by 王易平 on 15/5/20.
//  Copyright (c) 2015年 王易平. All rights reserved.
//

#import "YPModalViewController.h"

@interface YPModalViewController ()

@property IBOutlet UIButton *button;

@end

@implementation YPModalViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [UIView animateWithDuration:0.5f animations:^{
        self.button.transform = CGAffineTransformMakeRotation(-M_PI_4*3.0f);
    }];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [UIView animateWithDuration:0.5f animations:^{
        self.button.transform = CGAffineTransformIdentity;
    }];
}

-(IBAction)closeAction:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end

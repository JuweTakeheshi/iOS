//
//  RKUViewController.m
//  Shake
//
//  Created by Juan Jose Karam on 10/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "RKUViewController.h"

@implementation RKUViewController

@synthesize configurationView = _configurationView;


- (BOOL)canBecomeFirstResponder {
    
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self becomeFirstResponder];
    
    initView = [[UIView alloc] initWithFrame:self.view.frame];
    initView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:initView];
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    
    UIView * fromView;
    UIView * toView;
    
    if([self.view.subviews containsObject:initView])
    {
        fromView = initView;
        toView = _configurationView;
    } else
    {
        fromView = _configurationView;
        toView = initView;
    }
    
    [UIView transitionFromView:fromView toView:toView duration:0.2 options:UIViewAnimationOptionTransitionFlipFromLeft completion:^(BOOL complete) {
        
        [self.view addSubview:toView];
        [fromView removeFromSuperview];
    }];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

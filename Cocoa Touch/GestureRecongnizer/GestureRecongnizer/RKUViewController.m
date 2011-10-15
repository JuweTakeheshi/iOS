//
//  RKUViewController.m
//  GestureRecongnizer
//
//  Created by Juan Jose Karam on 10/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "RKUViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation RKUViewController
@synthesize cuadritoView = _cuadritoView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    _cuadritoView.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame) , _cuadritoView.frame.size.width, _cuadritoView.frame.size.height);
    
    [self.view addSubview: _cuadritoView];
    
    UILongPressGestureRecognizer * longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressHappened:)];
    longPress.minimumPressDuration = 2;
    
    [_cuadritoView addGestureRecognizer:longPress];
    
    _cuadritoView.transform = CGAffineTransformMakeScale(?);
}


- (void)longPressHappened:(UIGestureRecognizer *)recognizer {
    
    CABasicAnimation * animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    
    [animation setToValue:[NSNumber numberWithFloat:0.0]];
    [animation setFromValue:[NSNumber numberWithFloat:M_PI /16]];
    
    [animation setDuration:0.1];
    [animation setRepeatCount:NSUIntegerMax];
    [animation setAutoreverses:YES];
    
    [_cuadritoView.layer addAnimation:animation forKey:@"sorpresa"];
    
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
    return YES;
}

@end

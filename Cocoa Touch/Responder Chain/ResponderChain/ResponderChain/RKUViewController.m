//
//  RKUViewController.m
//  ResponderChain
//
//  Created by Juan Jose Karam on 10/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "RKUViewController.h"
#import "Vista1.h"

@implementation RKUViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGFloat midX = CGRectGetMidX(self.view.frame);
    CGFloat midY = CGRectGetMidY(self.view.frame);
    
    
    CGFloat x = midX * .40;
    CGFloat y = midY * .40;
    CGFloat width = midX + (midX * .40);
	CGFloat height = midY + (midY * .40);
    
    vista = [[Vista1 alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    
    
    [self.view addSubview:vista];
    
   // [self becomeFirstResponder];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch * touch = [[touches allObjects] objectAtIndex:0];
    
    CGPoint punto = [touch locationInView:self.view];
    
    [UIView animateWithDuration:.3 animations:^{
        vista.frame = CGRectMake(punto.x, punto.y, vista.frame.size.width, vista.frame.size.height);
    }];
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
    
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

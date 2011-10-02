//
//  RKUViewController.m
//  HelloWorld
//
//  Created by Juan Jose Karam on 10/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "RKUViewController.h"
#import "Persona.h"

@implementation RKUViewController

@synthesize nombreLabel;
@synthesize nuevoNombreTextField;


#pragma mark -

#pragma mark Mexican Methods
-(IBAction)agregar:(id)sender {

#define mexicanDebbuger @"Mexican Debugger"  

#ifdef IPAD
    NSLog(mexicanDebbuger);
#endif
    [persona setName:nuevoNombreTextField.text];
    [nombreLabel setText:[NSString stringWithFormat:@"%i", 3]];
    
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    return YES;
}


- (void)didReceiveMemoryWarning
{
    [persona release];
    persona = nil;
    
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    persona = [[Persona alloc] init];
    
    [persona setName:@"Steve"];
    
    nombreLabel.text = [persona name];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    if(!persona)
    {
        persona = [[Persona alloc] init];
    }
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

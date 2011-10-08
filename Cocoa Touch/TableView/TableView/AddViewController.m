//
//  AddViewController.m
//  TableView
//
//  Created by Juan Jose Karam on 10/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AddViewController.h"
#import "Participante.h"

@implementation AddViewController

@synthesize pais;
@synthesize participantes;


- (void)dealloc{
    
    [participantes release];
    
    if(nombre) {
        
        [nombre release];
    }
    
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}






- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if([textField tag] == 0) {
        
        nombre = [[textField text] retain];
        
        [pais becomeFirstResponder];
    
    } else if([textField tag] == 1){
        
        [self agregaParticipanteConNombre:nombre yPais:[textField text]];
    }
    
    return YES;
}


- (IBAction)add:(id)sender {
    
    [self agregaParticipanteConNombre:nombre yPais:[pais text]];
}

- (void)agregaParticipanteConNombre:(NSString *)elNombre yPais:(NSString *)elPais {
    
    Participante * participante = [[Participante alloc] init];
    
    [participante setNombre:elNombre];
    
    [participante setPais:elPais];
    
    [participantes addObject:participante];
    
    [self dismissModalViewControllerAnimated:YES];
}



@end

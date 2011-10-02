//
//  RKUViewController.h
//  HelloWorld
//
//  Created by Juan Jose Karam on 10/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Persona;

@interface RKUViewController : UIViewController <UITextFieldDelegate> {
    
     Persona * persona;
    
    UILabel * nombreLabel;
    UITextField * nuevoNombreTextField;
    
}

@property (nonatomic, retain) IBOutlet UILabel * nombreLabel;

@property (nonatomic, retain) IBOutlet UITextField * nuevoNombreTextField;

-(IBAction)agregar:(id)sender;

@end

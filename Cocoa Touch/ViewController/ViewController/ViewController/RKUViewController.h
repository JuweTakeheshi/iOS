//
//  RKUViewController.h
//  ViewController
//
//  Created by Juan Jose Karam on 10/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RKUViewController : UIViewController <UITextFieldDelegate> {
    
    UILabel * jugadorLabel;
    UITextField * nuevoJugador;
  
}

@property (nonatomic, retain) IBOutlet UILabel * jugadorLabel;
@property (nonatomic, retain) IBOutlet UITextField * nuevoJugador;


- (IBAction)addNewPlayer:(id)sender;
@end

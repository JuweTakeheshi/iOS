//
//  AddViewController.h
//  TableView
//
//  Created by Juan Jose Karam on 10/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddViewController : UIViewController <UITextFieldDelegate>{
    
    NSString * nombre;
    
    UITextField * pais;
    
    NSMutableArray * participantes;
}

@property (nonatomic, retain) IBOutlet UITextField * pais;

@property (nonatomic, retain) NSMutableArray * participantes;

- (IBAction)add:(id)sender;

- (void)agregaParticipanteConNombre:(NSString *)elNombre yPais:(NSString *)elPais;
@end

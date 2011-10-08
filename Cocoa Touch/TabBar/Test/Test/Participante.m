//
//  Participante.m
//  TableView
//
//  Created by Juan Jose Karam on 10/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Participante.h"

@implementation Participante

@synthesize nombre;
@dynamic pais;
@synthesize imagen;

- (NSString *)pais {
    
    return pais;
}
//Vathanx @ DeviantART

- (void)setPais:(NSString *)unPais {
    
    pais = unPais;
    
    if([pais isEqualToString:@"Guatemala"]) {
        
        self.imagen = [UIImage imageNamed:@"Flag of Guatemala.png"];
        
    } else if([pais isEqualToString:@"Estados Unidos"]) {
        
        self.imagen = [UIImage imageNamed:@"Flag of United States.png"];
        
    } else {
        
        self.imagen = [UIImage imageNamed:@"Flag of Mexico.png"];
    }
}
@end

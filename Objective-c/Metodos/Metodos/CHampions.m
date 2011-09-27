//
//  CHampions.m
//  Metodos
//
//  Created by Juan Jose Karam on 9/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CHampions.h"

@implementation CHampions


- (NSString *)nombre {
    
    return nombre;
}

- (void)setNombre:(NSString *)nuevoNombre {
    
    nombre = nuevoNombre;
}

- (void)anotarGol {
    
    NSLog(@"%@ anoto un gol", nombre);
    
    goles += 1;
}

- (int)goles {
    return goles;
}

@end

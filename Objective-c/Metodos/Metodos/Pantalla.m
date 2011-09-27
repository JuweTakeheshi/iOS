//
//  Pantalla.m
//  Metodos
//
//  Created by Juan Jose Karam on 9/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Pantalla.h"
#import "Equipo.h"

@implementation Pantalla



- (id)initWithEquipoLocal:(Equipo *)unEquipoLocal andEquipoVisitante:(Equipo *)unEquipoVisitante
{    
    self = [super init];
    
    if (self) {
        
        equipoVisitante = unEquipoVisitante;
        
        equipoLocal = unEquipoLocal;
        
        NSLog(@"Empieza el partido %@ vs %@", [equipoLocal nombre], 
              [equipoVisitante nombre]);
    }
    return self;
}

- (void)actualizaMarcadorConEquipoLocal:(Equipo *)unEquipoLocal yEquipoVisitante:(Equipo *)unEquipoVisitante {
    
    equipoLocal = unEquipoLocal;
    equipoVisitante = unEquipoVisitante;
    
    NSLog(@"%@ %i - %@ %i", [equipoLocal nombre],
                            [equipoLocal goles],
                            [equipoVisitante nombre],
          [equipoVisitante goles]);
                            
}

@end

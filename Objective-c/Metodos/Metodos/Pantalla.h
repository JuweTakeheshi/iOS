//
//  Pantalla.h
//  Metodos
//
//  Created by Juan Jose Karam on 9/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Equipo;

@interface Pantalla : NSObject {
    
    Equipo * equipoVisitante;
    Equipo * equipoLocal;
}

- (id)initWithEquipoLocal:(Equipo *)unEquipoLocal andEquipoVisitante:(Equipo *)unEquipoVisitante;


- (void)actualizaMarcadorConEquipoLocal:(Equipo *)unEquipoLocal yEquipoVisitante:(Equipo *)unEquipoVisitante;

@end

//
//  Equipo.h
//  Metodos
//
//  Created by Juan Jose Karam on 9/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Equipo : NSObject {

    NSString * nombre;
    int goles;
}

- (NSString *)nombre;

- (void)setNombre:(NSString *)nuevoNombre;

- (void)anotarGol;

- (int)goles;
@end

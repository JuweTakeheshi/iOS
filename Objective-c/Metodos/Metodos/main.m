//
//  main.m
//  Metodos
//
//  Created by Juan Jose Karam on 9/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Equipo.h"
#include "time.h"
#import "Pantalla.h"
#import "CHampions.h"

int main (int argc, const char * argv[])
{
    srand(time(NULL));
  
    
    
        id equipoLocal = [[CHampions alloc] init];
        
  
        
        id equipoVisitante = [[Equipo alloc] init];
    
    
    NSMutableArray * arreglo = [[NSMutableArray alloc] init];
    [arreglo addObject:equipoLocal];
    [arreglo addObject:equipoVisitante];
    
    NSMutableArray * nombres = [[NSMutableArray alloc] init];
    [nombres addObject:@"Xolos"];
    [nombres addObject:@"Colibris"];
    
    SEL metodoPaint = @selector(setNombre:);

    if([equipoLocal respondsToSelector:metodoPaint]){
        
        [equipoLocal performSelector:metodoPaint withObject:[nombres objectAtIndex:0]];
    }
    
    
    for(int i = 0; i < [arreglo count]; i++){
        
        [[arreglo objectAtIndex:i] performSelector:metodoPaint withObject:[nombres objectAtIndex:i]];
    }
        
        
    Pantalla * pantalla = [[Pantalla alloc] initWithEquipoLocal:equipoLocal andEquipoVisitante:equipoVisitante];
    
    for (int i = 0; i < 5; i++) {
        
        if(rand() % 2 == 0) {
            
            [equipoLocal anotarGol];
        
        } else {
            
            [equipoVisitante anotarGol];
        }
        
        [pantalla actualizaMarcadorConEquipoLocal:equipoLocal yEquipoVisitante:equipoVisitante];
    }
        
        // insert code here...
        NSLog(@"Hello, World!");
        
    return 0;
}


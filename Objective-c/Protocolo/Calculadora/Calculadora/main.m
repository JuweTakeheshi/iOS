//
//  main.m
//  Calculadora
//
//  Created by Juan Jose Karam on 10/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FabricaDeCalculadoras.h"
#import "CalculadoraProtocolo.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        FabricaDeCalculadoras * fabrica = [[FabricaDeCalculadoras alloc] init];
        
        id calculadora = [fabrica creaCalculadora];
        
        if ([calculadora conformsToProtocol:@protocol(CalculadoraProtocolo)]) {
            
            
            NSLog(@"%i", [calculadora sumaX:2 conY:3]);
        }
        
        
        if([calculadora respondsToSelector:@selector(potenciaDeX:)]) {
            
            NSLog(@"%i", [calculadora potenciaDeX:5]);
        }
        
        
    }
    return 0;
}


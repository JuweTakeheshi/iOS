//
//  FabricaDeCalculadoras.m
//  Calculadora
//
//  Created by Juan Jose Karam on 10/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "FabricaDeCalculadoras.h"

#import "CalculadoraCientifica.h"
#import "CalculadoraKinder.h"

@implementation FabricaDeCalculadoras


- (id<CalculadoraProtocolo>)creaCalculadora {
    
    id<CalculadoraProtocolo>  calculadora = [[CalculadoraKinder alloc] init];
    
    return calculadora;
}
@end 

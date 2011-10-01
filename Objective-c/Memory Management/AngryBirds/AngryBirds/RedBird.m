//
//  RedBird.m
//  AngryBirds
//
//  Created by Juan Jose Karam on 10/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "RedBird.h"

@implementation RedBird

@synthesize poder;
@synthesize puntosDeVida;

- (id)init {
    self = [super init];
    if (self) {
        
//        puntosDeVida = [NSNumber numberWithInt:100];
//        [puntosDeVida retain];
        
        puntosDeVida = [[NSNumber alloc] initWithInt:100];

    }
    return self;
}


- (NSNumber *)restaVida:(NSNumber *)vidaARestar {
    
    NSNumber * vidaRestante = [[NSNumber alloc] initWithInt:[puntosDeVida intValue] - [vidaARestar intValue]];
    
    [vidaRestante autorelease];
    
    return vidaRestante;
}


- (void)dealloc {
    
    [poder release];
    poder = nil;
    
    [puntosDeVida release];
    puntosDeVida = nil;
    
    [super dealloc];
}

@end

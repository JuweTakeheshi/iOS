//
//  Pais.m
//  Predicate
//
//  Created by Juan Jose Karam on 10/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Pais.h"

@implementation Pais

@synthesize nombre = _nombre;
@synthesize continente = _continente;


- (NSString *)description {
    
    return [NSString stringWithFormat:@"%@ - %@", _nombre, _continente];
}
@end

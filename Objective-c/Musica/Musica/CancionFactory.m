//
//  CancionFactory.m
//  Musica
//
//  Created by Juan Jose Karam on 9/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CancionFactory.h"
#import "CancionTrance.h"
#import "CancionHouse.h"
#include "time.h"

@implementation CancionFactory


- (id)creaCancion {
    
    id cancion;
    
    srand(time(NULL));
    
    if(random() % 2 == 0) {
        
        cancion = [[CancionHouse alloc] init];
        
    } else
    {
        cancion = [[CancionTrance alloc]
                   init];
    }
    
    return cancion;
    
}
@end

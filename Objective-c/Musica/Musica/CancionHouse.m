//
//  CancionHouse.m
//  Musica
//
//  Created by Juan Jose Karam on 9/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CancionHouse.h"
#include "time.h"

@implementation CancionHouse

- (void)tocaCancionConTarget:(id)target yAction:(SEL)action {
    
    nombre = @"Cancion House";
    
    NSLog(@"Tocando cancion house");
    sleep((random() % 3));
    
    if([target respondsToSelector:action])
    {
        [target performSelector:action];
    }
}

@end

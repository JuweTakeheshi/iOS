//
//  BeatBox.m
//  Musica
//
//  Created by Juan Jose Karam on 9/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "BeatBox.h"
#import "CancionFactory.h"

@implementation BeatBox


- (void)comienzaConcierto {
    
    CancionFactory * cancionFactory = [[CancionFactory alloc] init];
    
    id cancion = [cancionFactory creaCancion];

    SEL x = @selector(cancionTerminada);
    
    [cancion performSelector:@selector(tocaCancionConTarget:yAction:) withObject:self withObject:(id)x];
}

- (void)cancionTerminada {
    
    NSLog(@"Cancion Terminada");
    CancionFactory * cancionFactory = [[CancionFactory alloc] init];
    
    id cancion = [cancionFactory creaCancion];
    
    SEL x = @selector(cancionTerminada);
    
    [cancion performSelector:@selector(tocaCancionConTarget:yAction:) withObject:self withObject:(id)x];
    
}

@end

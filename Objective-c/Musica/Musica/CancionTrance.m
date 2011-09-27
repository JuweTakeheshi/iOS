//
//  CancionTrance.m
//  Musica
//
//  Created by Juan Jose Karam on 9/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

juanjokaram@gmail.com

#import "CancionTrance.h"

@implementation CancionTrance

- (void)tocaCancionConTarget:(id)target yAction:(SEL)action {
    
    nombre = @"Cancion Trance";
    NSLog(@"Tocando cancion trance");
    
    sleep((random() % 3));
    
    if([target respondsToSelector:action])
    {
        [target performSelector:action];
    }
}

@end

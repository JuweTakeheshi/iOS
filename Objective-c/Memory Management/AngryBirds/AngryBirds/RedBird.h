//
//  RedBird.h
//  AngryBirds
//
//  Created by Juan Jose Karam on 10/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RedBird : NSObject {
    
    NSString * poder;
    NSNumber * puntosDeVida;
}

@property (nonatomic, retain) NSString * poder;
@property (nonatomic, retain, readonly) NSNumber * puntosDeVida;

- (NSNumber *)restaVida:(NSNumber *)vidaARestar;
@end

//
//  CalculadoraProtocolo.h
//  Calculadora
//
//  Created by Juan Jose Karam on 10/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CalculadoraProtocolo <NSObject>

- (int)sumaX:(int)x conY:(int)y;

@optional

- (int)potenciaDeX:(int)x;
@end

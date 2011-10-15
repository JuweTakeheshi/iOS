//
//  main.m
//  Predicate
//
//  Created by Juan Jose Karam on 10/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pais.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray * array = [[NSArray alloc] initWithObjects:@"Mexico", @"Rusia", @"China", @"Canada", @"Belgica", nil];
        
        
        
        NSPredicate * predicate = [NSPredicate predicateWithFormat:@"self = 'Mexico'"];
        
        NSArray * filtrado = [array filteredArrayUsingPredicate:predicate];
        
        NSLog(@"%@",  array);
        
        
        Pais * pais = [[Pais alloc] init];
        [pais setNombre:@"Mexico"];
        [pais setContinente:@"America"];
        
        Pais * pais2 = [[Pais alloc] init];
        [pais2 setNombre:@"Brasil"];
        [pais2 setContinente:@"America"];
        
        Pais * pais3 = [[Pais alloc] init];
        [pais3 setNombre:@"Inglaterra"];
        [pais3 setContinente:@"Europa"];
        
        Pais * pais4 = [[Pais alloc] init];
        [pais4 setNombre:@"Italia"];
        [pais4 setContinente:@"Europa"];
        
        Pais * pais5 = [[Pais alloc] init];
        [pais5 setNombre:@"Canada"];
        [pais5 setContinente:@"America"];
        
        
        NSArray * paises = [[NSArray alloc] initWithObjects:pais, pais2, pais3, pais4, pais5, nil];
        
        NSPredicate * paisesPredicate = [NSPredicate predicateWithFormat:@"%K like[cd] 'eur*'", @"continente"];
        
        //NSArray * filtro2 = [paises filteredArrayUsingPredicate:paisesPredicate];
        
       // NSLog(@"%@", filtro2);
        
        NSPredicate * template = [NSPredicate predicateWithFormat:@"nombre = $PAISES_A_BUSCAR"];
        
        NSArray * paisesABuscar = [NSArray arrayWithObjects:@"Mexico", @"Italia", nil];
        
        NSMutableArray * subPredicates = [[NSMutableArray alloc] init];
        

            [subPredicates addObject:[template predicateWithSubstitutionVariables:[NSDictionary dictionaryWithObject:paisesABuscar forKey:@"PAISES_A_BUSCAR"]]];
            
      
        
        NSLog(@"%@", subPredicates);
        NSPredicate * filtradoCompuesto = [NSCompoundPredicate orPredicateWithSubpredicates:subPredicates];
        
        NSArray * filtro3 = [paises filteredArrayUsingPredicate:filtradoCompuesto];
        
        NSLog(@"%lo", [filtro3 count]);
    }
    return 0;
}


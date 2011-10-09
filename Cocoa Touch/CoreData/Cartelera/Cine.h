//
//  Cine.h
//  Cartelera
//
//  Created by Juan Jose Karam on 10/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Pelicula;

@interface Cine : NSManagedObject

@property (nonatomic, retain) NSString * zona;
@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) NSSet *peliculas;
@end

@interface Cine (CoreDataGeneratedAccessors)

- (void)addPeliculasObject:(Pelicula *)value;
- (void)removePeliculasObject:(Pelicula *)value;
- (void)addPeliculas:(NSSet *)values;
- (void)removePeliculas:(NSSet *)values;

@end

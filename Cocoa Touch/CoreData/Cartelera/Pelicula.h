//
//  Pelicula.h
//  Cartelera
//
//  Created by Juan Jose Karam on 10/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Cine;

@interface Pelicula : NSManagedObject

@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) NSNumber * rating;
@property (nonatomic, retain) Cine *cine;

@end

#import "Persona.h"

@implementation Persona

- (NSString *)description {
	
	return [[NSString alloc] 
	initWithFormat:@"%@ tiene una direccion de memoria %@",
	 @"Juan =)", [super description]];
}

@end
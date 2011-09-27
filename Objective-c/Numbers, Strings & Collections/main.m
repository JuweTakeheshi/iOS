#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
	NSNumber * numero = [[NSNumber alloc] initWithInt:24];
	
	NSLog(@"%@", numero);
	
	NSNumber * flotante = [[NSNumber alloc] initWithFloat:24.7];
	
	NSLog(@"%f", [numero intValue] + [flotante floatValue]);
	
	if(!numero)
	{
		
	}
	
	if([numero compare:flotante] == NSOrderedAscending){
		
		NSLog(@"Flotante es mayor");
	} else if([numero compare:flotante con:flotante2] == NSOrderedDescending) 
	{
			
	} else {
		
	}
	
	
	return 0;
}
#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) 
{
	NSArray * arreglo = [[NSArray alloc] initWithObjects:@"a", @"b", 
	[[NSNumber alloc] initWithInt:22], 
	nil];
	
	for(int i = 0; i < [arreglo count]; i++) {
		
		NSLog(@"%@", [arreglo objectAtIndex:i]);
	}
	
	NSMutableArray * mutable = [[NSMutableArray alloc] init];
	[mutable addObject:@"Enero"];
	[mutable addObject:@"Febrero"];
	[mutable addObject:@"Abril"];
	
	[mutable replaceObjectAtIndex:2 withObject:@"Marzo"];
	[mutable insertObject:@"Abril" atIndex:3];
	NSLog(@"%@", mutable);
	
	NSMutableDictionary * dic = [[NSMutableDictionary alloc] init];
	
	[dic setObject:@"Enero" forKey:@"1"];
	
	NSLog(@"El mes 1 es %@", [dic objectForKey:@"1"]);
	
	

	return 0;	
}
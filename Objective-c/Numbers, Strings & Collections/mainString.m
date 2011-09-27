#import <Foundation/Foundation.h>
#import "Persona.h"

int main(int argc, const char * argv[]) 
{
	Persona * persona = [[Persona alloc] init];
	
	NSLog(@"%@", persona);
	
	NSString * holaMundo = @"Hola mundo";
	NSString * mundo = @"mundo";
	NSString * obj = @"obj-c";
	
	NSMutableString * mutable = [holaMundo mutableCopy];
	
	NSRange range = [mutable rangeOfString:@"mundo"];
	
	[mutable replaceCharactersInRange:range withString:@"obj-c"];
	
	NSLog(@"%@", mutable);
	
	
	return 0;
}
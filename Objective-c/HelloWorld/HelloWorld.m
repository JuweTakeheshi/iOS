#import <Foundation/Foundation.h>

void saluda() {
	
	NSLog(@"Hola Mundo");
}

int main(int argc, const char * argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	saluda();
	
	[pool drain];
	
	return 0;
}
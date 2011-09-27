#import <Foundation/Foundation.h>
#import "Taco.h"

int main(int argc, const char * argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	Taco * taco = [[Taco alloc] init];
	
	
	[pool drain];
	
	return 0;
}

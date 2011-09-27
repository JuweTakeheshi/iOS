#import <Foundation/Foundation.h>


void potencia(int x) 
{
	x = x * x;
}

void potenciaApuntador(int * px)
{
	*px = *px * *px;
}

int main(int argc, const char * argv[])
{
	NSLog(@"Tipos");
	
	int a = 1;
	int b = 2;
	int c = 3;
	
	NSLog(@"a valor %i", a);
	NSLog(@"b valor %i", b);
	NSLog(@"c valor %i", c);
	
	a = b;
	b = b++;
	c = a++;
	a += 1;
	
	NSLog(@"---------");
	
	NSLog(@"a valor %i", a);
	NSLog(@"b valor %i", b);
	NSLog(@"c valor %i", c);
	
	
	NSLog(@"---------");
	NSLog(@"Apuntadores");
	
	int * pa = &a;
	int * pb = &b;
	int * pc = &c;
	
	pa = pb;
	*pb += 3;
	*pa +=2;
	pb = pc;
	*pc = 4;
	*pb -= 5;
	
	NSLog(@"pa valor %i", *pa);
	NSLog(@"pb valor %i", *pb);
	NSLog(@"pc valor %i", *pc);
	
	int x = 5;
	potencia(5);
	NSLog(@"%i", x);
	
	int * px = &x;
	
	potenciaApuntador(px);
	
	NSLog(@"%i", *px);
	return 0;
}
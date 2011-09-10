#include <stdio.h>
#include <stdlib.h>
#include <time.h>

inline double obtener_numero_aleatorio(double x , double y) {
	
	return x + (y -x) * rand() / ((double) RAND_MAX);
} 


int main() {
	
	
	srand(time(0));
	
	double random1 = obtener_numero_aleatorio(0, 1);
	int random2 = (int)obtener_numero_aleatorio(1, 2);
	
	printf("Aleatorio sin Cast:%g\n", random1);
	printf("Aleatorio sin Casn:%d\n", random2);
	
	return 0;
	
}
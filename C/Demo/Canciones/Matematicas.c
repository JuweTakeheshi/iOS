#include "Matematicas.h"

int sumar(int duraciones[], int totalDelArreglo) {
	
	int i;
	int totales = 0;
	
	for(i = 0; i < totalDelArreglo; i++)
	{
		totales += duraciones[i];
	}
	
	return totales;
}
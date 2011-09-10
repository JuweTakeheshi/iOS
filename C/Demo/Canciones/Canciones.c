#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "Cancion.h"
#include "Matematicas.h"

int main() {

	int cancionesAGenerar;
	int i;
	int duracionTotal;
	int anoPromedio;
	
	srand(time(0));
	
	printf("¿Cuantas Canciones se deben Generar? \n");
	
	scanf("%d", &cancionesAGenerar);
	
	if(cancionesAGenerar > 0)
	{
		Cancion canciones[cancionesAGenerar];
		
		for(i = 0; i < cancionesAGenerar; i++)
		{
			canciones[i] = crear_cancion((rand() % 200) + 100, rand() % 56 + 1955);
							
				
			pintar_cancion(canciones[i]);
		}
		
		
		int duraciones[cancionesAGenerar];
		
		for(i = 0; i < cancionesAGenerar; i++)
		{
			duraciones[i] = canciones[i].duracion;
		}
		
		int total = sumar(duraciones, cancionesAGenerar);
		
		printf("El total de las duraciones es: %d \n", total);
	}
	
}
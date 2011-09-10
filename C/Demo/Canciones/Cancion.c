#include <stdio.h>
#include "Cancion.h"

Cancion crear_cancion(int duracion, int anoGrabacion) {
						
						
						Cancion nuevaCancion;
						
						nuevaCancion.duracion = duracion;
						nuevaCancion.anoGrabacion = anoGrabacion;
						
						
						return nuevaCancion;
					}


void pintar_cancion(Cancion cancion) {
	
	printf("La cancion tiene una duracion de %d y es del ano %d \n", cancion.duracion,
		cancion.anoGrabacion);
}
#include <stdio.h>
#include "Cancion.h"

Cancion crear_cancion(int duracion, int anoGrabacion, int noPista, int noEstrellitasEniTunes) {
						
						
						Cancion nuevaCancion;
						
						nuevaCancion.duracion = duracion;
						nuevaCancion.anoGrabacion = anoGrabacion;
						nuevaCancion.noPista = noPista;
						nuevaCancion.noEstrellitasEniTunes = noEstrellitasEniTunes;
						
						
						return nuevaCancion;
					}


void pintar_cancion(Cancion cancion) {
	
	printf("La cancion tiene una duracion de %d y es del ano %d", cancion.duracion,
		cancion.anoGrabacion);
}
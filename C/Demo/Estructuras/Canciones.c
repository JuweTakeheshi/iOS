#include <stdio.h>
#include "Cancion.h"


int main() {
	
	Cancion cancion = crear_cancion(230, 2001, 2, 5);
	pintar_cancion(cancion);
	
	return 0;
}
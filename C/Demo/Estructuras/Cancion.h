typedef struct {
	
	int duracion;
	int anoGrabacion;
	int noPista;
	int noEstrellitasEniTunes;

	} Cancion;
	
	
Cancion crear_cancion(int duracion, int anoGrabacion, int noPista, int noEstrellitasEniTunes);
					
void pintar_cancion(Cancion cancion);


#import <stdio.h>

int main() {
	
	
	//gdb 
	//file "file"
	//break (b) linea
	//break funcion
	//break Programa:linea
	//run
	//step
	//continue
	//info break
	//disable #
	//ignore # 40
	//watch simbolo
	
	
	
	int numerosACalcular;
	int i;
	int numeroActual;
	int siguente;
	int tirar;
	
	printf("¿Cuantos Numeros Quieres Calcular?");
	
	scanf("%d", &numerosACalcular);
	
	
	if(numerosACalcular > 0) 
	{
		printf("\n\t Fibonacci");
		
		siguente = 1;
		
		for(i = 1; i <= numerosACalcular; i++)
		{
			printf("\t %d \n", numeroActual);
			
			tirar = numeroActual + siguente;
			numeroActual = siguente;
			siguente = tirar;
			
		}
	}
	
	return 0;
}

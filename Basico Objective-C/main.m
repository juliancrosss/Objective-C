//
//	main.m
//	Ejemplo 1 - Objective-C
//
//	Created by Julian Cruz on 26/10/15
//	Copyright (c) 2015 Pywe. All rights reserved
//

#import <Foundation/Foundation.h>// En esta línea importamos el foundation framework. De esta manera le dijimos a la aplicación que vamos a utilizarlo.

int main(int argc, const char * argv[]) //No importa si programas para iOS o Mac, todas las aplicaciones en Objective-C inician con la función main. Xcode siempre la va incluir por nosotros, por lo tanto no es necesario que la escribamos.
{

	@autoreleasepool{ //autoreleasepool tiene que ver con manejo de memoria

		//insert code here... // Comentario ,También podemos comentar con /* */ como en la mayoría de los lenguajes modernos
		NSLog(@"Hola, Mundo!");//NSLog se usa para escribir mensajes de salida (imprimir por pantalla), es el equivalente, a printf de C++, system.out.println de Java o console.writeline de C#.

	}
	return 0;//Este es el final de la función main, indicando que fue exitosa la ejecución.

}
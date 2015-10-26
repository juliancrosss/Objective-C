# Objective-C

*Esta es un guia de comienzo para Objective-C, para la creacion de aplicaciones iOS y OS X. En 1988 Objective-C fue adoptado por NeXT (la compañía que fundó Steve Jobs cuando dejó Apple). Este fue utilizado como base para construir el sistema operativo que correrían sus computadores, NeXTStep*

*En el 96 Apple compró NeXT, y su sistema operativo, NextStep, pasó a convertirse en Mac OS X en 2001. Es por esto que verás que la mayoría de las clases del SDK de iOS y Mac tienen el prefijo "NS", porque provienen de NeXTStep.*

*A diferencia de C++, Java o C#, Objective-C no esta basado en C, Objective-C es C. Por lo tanto podrías copiar código de un programa hecho en C y pegarlo en uno de Objective-C y este compilará*

#Foundation

*Foundation es un framework de Apple que facilita el manejo de estructuras básicas como colecciones, strings, fechas, entre otros.*

#Automatic Reference Counting

*"Automatic Reference Counting" (ARC) en un manejador de memoria (no recolector de basura como el de Java o C#) que nos ahorrará tener que hacer release (similar a delete o free en C++). ARC lleva el conteo de referencias (punteros) a direcciones de memoria y es capaz de hacer la liberación del espacio automáticamente por nosotros cuando el conteo llega a cero. En otras palabras, cuando creas un objeto, este es alocado en memoria y apuntado por una variable que llamamos "apuntador", cuando esta variable deja de existir (Ej: Terminó la ejecución de la función donde fue creado), el espacio de memoria no es apuntado por nadie, por lo tanto ARC lo borra.*

##Estructura de un programa

    //
    //	main.m
    //	Ejemplo 1 - Objective-C
    //
    //	Created by Julian Cruz on 26/10/15
    //	Copyright (c) 2015 Pywe. All rights reserved
    //
    #import <Foundation/Foundation.h>// En esta línea importamos el foundation framework. De esta manera le dijimos a la  aplicación que vamos a utilizarlo.
    
    int main(int argc, const char * argv[]) //No importa si programas para iOS o Mac, todas las aplicaciones en Objective-C inician con la función main. Xcode siempre la va incluir por nosotros, por lo tanto no es necesario que la escribamos.
{

    @autoreleasepool{ //autoreleasepool tiene que ver con manejo de memoria

    //insert code here... // Comentario ,También podemos comentar con /* */ como en la mayoría de los lenguajes modernos
    NSLog(@"Hola, Mundo!");//NSLog se usa para escribir mensajes de salida (imprimir por pantalla), es el equivalente, a printf de C++, system.out.println de Java o console.writeline de C#.

      }
    return 0;//Este es el final de la función main, indicando que fue exitosa la ejecución.

    }


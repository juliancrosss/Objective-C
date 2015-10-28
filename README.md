# Objective-C

*Esta es un guia de comienzo para Objective-C, para la creacion de aplicaciones iOS y OS X. En 1988 Objective-C fue adoptado por NeXT (la compañía que fundó Steve Jobs cuando dejó Apple). Este fue utilizado como base para construir el sistema operativo que correrían sus computadores, NeXTStep*

*En el 96 Apple compró NeXT, y su sistema operativo, NextStep, pasó a convertirse en Mac OS X en 2001. Es por esto que verás que la mayoría de las clases del SDK de iOS y Mac tienen el prefijo "NS", porque provienen de NeXTStep.*

*A diferencia de C++, Java o C#, Objective-C no esta basado en C, Objective-C es C. Por lo tanto podrías copiar código de un programa hecho en C y pegarlo en uno de Objective-C y este compilará*

#Foundation

*Foundation es un framework de Apple que facilita el manejo de estructuras básicas como colecciones, strings, fechas, entre otros.*

#Automatic Reference Counting

*"Automatic Reference Counting" (ARC) en un manejador de memoria (no recolector de basura como el de Java o C#) que nos ahorrará tener que hacer release (similar a delete o free en C++). ARC lleva el conteo de referencias (punteros) a direcciones de memoria y es capaz de hacer la liberación del espacio automáticamente por nosotros cuando el conteo llega a cero. En otras palabras, cuando creas un objeto, este es alocado en memoria y apuntado por una variable que llamamos "apuntador", cuando esta variable deja de existir (Ej: Terminó la ejecución de la función donde fue creado), el espacio de memoria no es apuntado por nadie, por lo tanto ARC lo borra.*

##Estructura de un programa

    #import <Foundation/Foundation.h>
    int main(int argc, const char * argv[])
    {
        @autoreleasepool {                  
        // insert code here...          
        NSLog(@"Hello, World!");
        }
    return 0;                           
    }

*Objective-C es un lenguaje case sensitive, esto significa que main es diferente de Main. Por otro lado, no es sensible a espacios en blanco por lo que la función main se podría declarar también de la siguiente manera:*

        int main(int argc,
            const char * argv[])
        ...
        
##Ejecutando la aplicacion

*Objective-C es un lenguaje que debe ser compilado. A diferencia de Javascript, PHP, Ruby o Python, que son lenguajes interpretados.*

*Ejecucion*

        > Ejemplo 1 - Objective-C[3812:303] Hello, World!

#Variables

*la variables se agsinan de la siguiente manera:*

        tipoDeDato NombreDeVariable = Valor;

*Todas las variables en Objective-C se declaran igual que en C. La estructura de la definición es la siguiente:*

        int myVariable = 10;
        
*Los tipos de datos primitivos en Objective-C son los mismos que en C solo que incluimos uno más:*

* int: para numeros enteros
* float: para puntos flotante (valores con decimales)
* double: un punto flotante de mayor precisión (dobla la cantidad de decimales de float)
* char: para carateres simples
* BOOL: este es el que incluimos que no tenia C, es para valores booleanos (verdadero o falso, en objective-C: YES o NO)

#Condicionales

        if (a == b){
            //do this
        }
        else{
            that this
        }

*Switch*

        switch(numero){
            case 1:
                //do something
                break;
            case 2:
                //do something
                break;
                
            default:
                // None of the above
                break;
        }

#Ciclos

*Igualmente los mismo de C:*

##Do

        do {
            //do something
        }while (a > b);
        
##While

        while(a>b){
            //loop
        }
        
##For 

        for (int i= 0; i < 10; i++){
            //loop
        }

##For in o For each

*Recorrer colecciones de objectos*

        for (NSString *name in users){
            //do something with the user 
        }
        

#Clases

*En Objective-C las clases son representadas mediante el uso de dos archivos, en lugar de uno como Java y C#, estos archivos son llamados encabezado e implementación, y llevan las extensiones .h y .m respectivamente.*

*Vamos a crear una clase Persona e indicamos que es una subclase de NSObject. En Objective-C, todas las clases heredan de NSObject, así como en java todas de Object.*

* Archivos creados:

        Persona.h //(Encabezado)
        Persona.m //(implementación)

*Persona.h (Encabezado) Debería contener lo siguiente:*
*En los archivos .h (Encabezados) de las clases anunciamos los atributos y métodos que serán públicos.*

        #import <Foundation/Foundation.h>
        
        @interface Persona : NSObject
        
        @end
        
*Persona.m (Implementacion), encontraremos el siguiente código:*
*Todo lo que coloquemos en el archvo .m de una clase y no esté declarado en el .h, será privado.*

        #import "Persona.h"
        
        @implementation Persona
        
        @end

##Instancia de una clase

*Instanciando una clase y aplicando metodos*

        yourCar = [Car new]; //get a new car
        [yourCar drive];
        [yourCar wash];
        currentMiLeage = [yourCar odometer];

#Metodos
*Aplicando un metodo a una clase o instancia de la clase*

        
    [ ClassOrInstance method ];
    
*Metodo con argumentos*

    [yourCar setSpeed: 55]; // set the speed to 55 mph
    
*Otros ejemplos*    
    
    [myWindow erase]; Clear the window
    theArea = [myRect area]; Calculate the area of the rectangle
    [userText spellCheck]; Spell-check some text
    [deskCalculator clearEntry]; Clear the last entry
    [favoritePlaylist showSongs]; Show the songs in a playlist of favorites
    [phoneNumber dial]; Dial a phone number
    [myTable reloadData]; Show the updated table’s data
    n = [aTouch tapCount]; Store the number of times the display was tapped
        
#Apuntadores

*Los apuntadores son variables que hacen referencia a objetos. Estudiemos la estructura de un apuntador. Vamos al archivo main.m e importamos nuestra clase Persona (en cualquier lugar antes de la función main). Debe lucir así:*

        #import "Persona.h"
        
        #import <Foundation/Foundation.h>
        
        int main(int argc, const char * argv[])
        {
            @autoreleasepool{
                
                //insert code here...
                NSLog(@"Hello, World!");
            }
            return 0;
        }
        
*Ahora borramos todo lo que esté dentro del bloque @autoreleasepool ya que no lo vamos a necesitar y agregamos el siguiente código:*

        Persona *julian = [[Persona alloc] init];
        
##NSLog
 
*Muestra un cadena o logs*
*Imprimiendo en una linea nueva*

        NSLog(@"Testing...\n..1\n..2\n...3");
        
        * Resultado
        
        Testing...
        ..1
        ..2
        ...3

*Imprimiendo con variables*

        int suma;
        suma = 50 + 25;
        NSLog(@"La suma entre 50 y 25 es %i", suma);
        
        *Resultado
        
        La suma entre 50 y es es 75
        
*Ejemplo 2*

        int value1, value2, suma;
        
        value1 = 50;
        value2 = 25;
        suma = value1 + value2;
        
        NSLog (@"La suma de %i y %i es %i",value1, value2, suma);
        
        * Resultado
        
        La suma de 50 y 25 es 75
        

        

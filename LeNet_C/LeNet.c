#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[]){
    if(argc!=2) {
        printf("Ha olvidado su nombre.\n");
        exit(1);
    }
    printf("Hola %s", argv[1]);
    return 0;
} // end main

void conv2D(){

} // end Conv2D

void maxPooling2D(){

} // end MaxPooling2D

void flatten(){

} // end Flatten

void dense(){

} // end Dense

/**************************************************************************
*   Función:   relu()
*   Proposito:  Activation Layer ReLU
*   Argumentos:
*       number: Input of activation layer
*   Retorno:
*       number if number is major to 0, or 0 if is minor to 0.
**************************************************************************/
float relu(float number){
    if(number > 0)
        return number;
    return 0;
} // end relu

void softmax(){

} // end softmax
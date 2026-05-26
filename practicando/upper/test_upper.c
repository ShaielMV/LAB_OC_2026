// P17 - str_upper

#include <stdio.h>

extern void str_upper( char *str );

int main(){

    char texto[] = "hola mun222do";

    printf("--- str_upper ---\n");

    printf("Original: %s\n", texto);

    str_upper(texto);

    printf("Resultado: %s\n", texto);
    printf("Esperado: HOLA MUNDO\n");

    return 0;
}
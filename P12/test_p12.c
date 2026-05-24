#include <stdio.h>

extern int strlen(char *str);
extern void str_mid(char *str_out, char *str1_in, int start, int end);
extern int clrBit( int value, int nbit);

int main(){
    char charLen[] = "Haber el largo de esta palabra";
    char charOut[] = "Pejelagarto";
    char charIn[] = "Guacamayo";
    int start = 3;
    int end = 5;
    int value = 15;
    int nbit = 3;

  
    printf("Largo de la palabra: %d\n ", strlen(charLen));
    printf("\n");
    printf("Palabra antes de modifcar: %s\n", charOut);
    str_mid(charOut, charIn, start, end);
    printf("Palabra despues de modifcar: %s\n ", charOut);
    printf("\n");
    printf("Valor antes de modficar: %d\n", value);
    printf("Valor despues de modificar: %d\n", clrBit(value, nbit));
}
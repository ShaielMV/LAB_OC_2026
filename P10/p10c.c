#include <stdio.h>

extern int suma(int num1, int num2);
extern int Strlen(char *str);
extern int getBit( int value, int numbit);


int main()
{ 
    int num1=2, num2=4;
    char str[]= "hola mundo";
    int value = 10, numbit= 1;
    printf("%d\n", suma(num1,num2));
    printf("%d\n", Strlen(str));
    printf("%d\n", getBit(value, numbit));
}
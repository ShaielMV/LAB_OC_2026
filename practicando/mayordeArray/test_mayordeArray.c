// P14 - maxArray
#include <stdio.h>

extern int maxArray( int *arr, int size );

int main(){

    int arr[] = {90,5,110,32,7};
    int max;

    printf("--- maxArray ---\n");

    max = maxArray(arr,5);

    printf("Maximo: %d\n", max);
    printf("Esperado: 110\n");

    return 0;
}
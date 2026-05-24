#include <stdio.h>
extern void reverseArray(int *arr, int size);

int main() {
    int mi_arreglo[] = {10, 20, 30, 40, 50};
    int tamano = 5;

    printf("--- Ejercicio 1: reverseArray ---\n");
    printf("Original: ");
    for(int i = 0; i < tamano; i++) printf("%d ", mi_arreglo[i]);
    printf("\n");

    reverseArray(mi_arreglo, tamano);

    printf("Invertido: ");
    for(int i = 0; i < tamano; i++) printf("%d ", mi_arreglo[i]);
    printf("\n\n");

    return 0;
}
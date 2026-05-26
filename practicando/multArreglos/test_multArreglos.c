#include <stdio.h>

extern int sumProducts(int *arrA, int *arrB, int size);

int main() {
    // 2*-3 = -6 | -5*4 = -20 | 10*2 = 20 -> Resultado total = -6 + (-20) + 20 = -6
    int datosA[] = {2, -5, 10};
    int datosB[] = {-3, 4, 2};
    int tamano = 3;

    printf("--- Ejercicio 1: sumProducts ---\n");
    int resultado = sumProducts(datosA, datosB, tamano);
    printf("Resultado total: %d (Esperado: -6)\n\n", resultado);

    return 0;
}
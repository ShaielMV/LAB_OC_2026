#include <stdio.h>
extern int countOnes(int value);

int main() {
    // El número 15 en binario es 0000...1111 (4 unos)
    // El número 9 en binario es 0000...1001 (2 unos)
    int prueba1 = 1497;
    int prueba2 = 28;

    printf("--- Ejercicio 2: countOnes ---\n");
    printf("Bits en 1 de %d: %d (Esperado: 4)\n", prueba1, countOnes(prueba1));
    printf("Bits en 1 de %d: %d (Esperado: 2)\n\n", prueba2, countOnes(prueba2));

    return 0;
}
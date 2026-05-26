#include <stdio.h>

// Declaramos las dos funciones de Assembly
extern void Procedimiento1(void);
extern int Procedimiento2(void);

int main() {
    printf("--- Experimento: ¿C salva EAX, ECX, EDX entre llamadas? ---\n");

    printf("1. Ejecutando Procedimiento1 para cargar 10, 20 y 30 en los registros...\n");
    Procedimiento1();

    printf("2. Ejecutando Procedimiento2 inmediatamente después...\n");
    int resultado = Procedimiento2();

    printf("\n[RESULTADO]\n");
    printf("El valor devuelto por el segundo procedimiento es: %d\n", resultado);
    
    if (resultado == 60) {
        printf("¡Confirmado!: Los registros NO se limpian ni se salvan. El valor se quedó ahí.\n");
    } else {
        printf("Algo modificó los registros en el medio (Resultado: %d)\n", resultado);
    }

    return 0;
}
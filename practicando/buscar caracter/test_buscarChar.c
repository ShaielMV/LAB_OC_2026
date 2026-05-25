#include <stdio.h>
extern char* str_chr(char *str, char c);
/*Busca la primera aparición del carácter c en la cadena str.
 Debe retornar un puntero (la dirección de memoria) a ese carácter dentro de la cadena.
 Si el carácter no existe, debe retornar 0 (NULL). */

int main() {
    char cadena[] = "Arquitectura de Computadoras";
    char buscar = 'd';

    printf("--- Ejercicio 3: str_chr ---\n");
    printf("Cadena original: %s (Direccion de inicio: %p)\n", cadena, (void*)cadena);
    
    // Llamada a tu función
    char *resultado = str_chr(cadena, buscar);

    if (resultado != NULL) {
        printf("Caracter '%c' encontrado!\n", buscar);
        printf("Direccion del caracter: %p\n", (void*)resultado);
        printf("Texto desde esa posicion: %s\n", resultado); 
        // Debería imprimir: "de Computadoras"
    } else {
        printf("Caracter '%c' no encontrado.\n", buscar);
    }

    return 0;
}
#include <stdio.h>

typedef struct {
    int id;             // Ocupa 4 bytes (Offset 0)
    char gender;        // Ocupa 1 byte  (Offset 4)
    int current_grade;  // Ocupa 4 bytes (Offset 8) <-- ¡Este es el que vas a modificar!
} Student;

extern void updateGrade(Student *s, int pointsToAdd);

int main() {
    Student alumno = {2026001, 'M', 85};

    printf("--- Ejercicio 2: updateGrade ---\n");
    printf("Calificacion inicial: %d\n", alumno.current_grade);
    
    // Prueba 1: Sumar 10 puntos (85 + 10 = 95)
    updateGrade(&alumno, 10);
    printf("Prueba 1 (Suma 10): %d (Esperado: 95)\n", alumno.current_grade);

    // Prueba 2: Sumar 20 puntos (95 + 20 = 115 -> Debe topar en 100)
    updateGrade(&alumno, 20);
    printf("Prueba 2 (Suma 20 / Tope): %d (Esperado: 100)\n\n", alumno.current_grade);

    return 0;
}
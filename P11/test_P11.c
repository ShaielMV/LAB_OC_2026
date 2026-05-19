#include <stdio.h>
#include <stdint.h>

extern void pBin8b(uint8_t dato);
extern void pBin16b(uint16_t dato);
extern void pBin32b(uint32_t dato);
extern void pBin64b(uint64_t dato);

int main(){
    uint8_t dato8 = 180;
    uint16_t dato16 = 2922;
    uint32_t dato32 = 92882;
    uint64_t dato64 = 102928472288723;

  
    printf("Dato de 8 bits:\n ");
    pBin8b(dato8);
   
    printf("\nDato de 16 bits:\n ");
    pBin16b(dato16);

    printf("\nDato de 32 bits:\n ");
    pBin32b(dato32);

    printf("\nDato de 64 bits:\n ");
    pBin64b(dato64);

    printf("\n");
}
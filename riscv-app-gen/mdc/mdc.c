#include <stdint.h>
#include <stdio.h>

__attribute__((noinline))
uint32_t mdc(uint32_t a, uint32_t b) {
    while (b != 0) {
        uint32_t r = a % b;  // usa módulo -> ótima carga para unidade de divisão
        a = b;
        b = r;
    }
    return a;
}

int main() {
    //volatile uint32_t r = mdc(987654321, 1388934); // Answer: 2601 or 0xA29
    volatile uint32_t r = mdc(1836311903, 1134903170); //Worst Case, Answer: 1

    
     
    //printf("MDC : %x\n", r);
    return r;
}

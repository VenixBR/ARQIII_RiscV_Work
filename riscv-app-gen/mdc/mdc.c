#include <stdint.h>
#include <stdio.h>

int main() {

    int a = 987654321; 
    int b = 123456789;
    int r;  

    while (b != 0) {
        r = a % b;      
        a = b;
        b = r;
    }

    return r;

   // printf("MDC : %d\n", a);
}

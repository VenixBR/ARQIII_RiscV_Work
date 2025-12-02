// Compile with -O2

#include <stdio.h>
#include <stdint.h>

// ----------- MUL instructions -----------

__attribute__((noinline))
int32_t calc_mul(int32_t a, int32_t b) {
    return a * b;
}

__attribute__((noinline))
int32_t calc_mulh(int32_t a, int32_t b) {
    int64_t prod = (int64_t)a * (int64_t)b;
    return (int32_t)(prod >> 32);
}

__attribute__((noinline))
uint32_t calc_mulhu(uint32_t a, uint32_t b) {
    uint64_t prod = (uint64_t)a * (uint64_t)b;
    return (uint32_t)(prod >> 32);
}

__attribute__((noinline))
int32_t calc_mulhsu(int32_t a, uint32_t b) {
    int64_t prod = (int64_t)a * (uint64_t)b;
    return (int32_t)(prod >> 32);
}

// ----------- DIV / REM (32-bit) -----------

__attribute__((noinline))
int32_t calc_div(int32_t a, int32_t b) {
    return a / b;
}

__attribute__((noinline))
uint32_t calc_divu(uint32_t a, uint32_t b) {
    return a / b;
}

__attribute__((noinline))
int32_t calc_rem(int32_t a, int32_t b) {
    return a % b;
}

__attribute__((noinline))
uint32_t calc_remu(uint32_t a, uint32_t b) {
    return a % b;
}


int main(void) {
    int32_t a = 12345678;
    int32_t b = -87654321;
    uint32_t ua = 12345678U;
    uint32_t ub = 87654321U;

    printf("MUL    %d x %d = %d",a, b, calc_mul(a, b));
    printf("MULH   %d x %d = %d",a, b, calc_mulh(a, b));
    printf("MULHU  %d x %d = %d",ua, ub, calc_mulhu(ua, ub));
    printf("MULHSU %d x %d = %d",a, ub, calc_mulhsu(a, ub));
    printf("DIV    %d / %d = %d",b, a, calc_div(b, a));
    printf("DIVU   %d / %d = %d",ua, ub, calc_divu(a, b));
    printf("REM    %d %% %d = %d",b, a, calc_rem(b, a));
    printf("REMU   %d %% %d = %d",ub, ua, calc_remu(ub, ua));

    return 0;
}

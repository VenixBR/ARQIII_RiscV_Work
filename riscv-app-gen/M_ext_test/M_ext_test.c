#include <stdint.h>

// ----------- MUL instructions -----------

int32_t calc_mul(int32_t a, int32_t b) {
    return a * b;
}

int32_t calc_mulh(int32_t a, int32_t b) {
    int64_t prod = (int64_t)a * (int64_t)b;
    return (int32_t)(prod >> 32);
}

uint32_t calc_mulhu(uint32_t a, uint32_t b) {
    uint64_t prod = (uint64_t)a * (uint64_t)b;
    return (uint32_t)(prod >> 32);
}

int32_t calc_mulhsu(int32_t a, uint32_t b) {
    int64_t prod = (int64_t)a * (uint64_t)b;
    return (int32_t)(prod >> 32);
}

// ----------- DIV / REM (32-bit) -----------

int32_t calc_div(int32_t a, int32_t b) {
    return a / b;
}

uint32_t calc_divu(uint32_t a, uint32_t b) {
    return a / b;
}

int32_t calc_rem(int32_t a, int32_t b) {
    return a % b;
}

uint32_t calc_remu(uint32_t a, uint32_t b) {
    return a % b;
}


int main(void) {
    int32_t a = 12345678;
    int32_t b = -87654321;
    uint32_t ua = 12345678U;
    uint32_t ub = 87654321U;

    volatile int32_t r1  = calc_mul(a, b);
    volatile int32_t r2  = calc_mulh(a, b);
    volatile uint32_t r3 = calc_mulhu(ua, ub);
    volatile int32_t r4  = calc_mulhsu(a, ub);
    volatile int32_t r5  = calc_div(b, a);
    volatile uint32_t r6 = calc_divu(ub, ua);
    volatile int32_t r7  = calc_rem(b, a);
    volatile uint32_t r8 = calc_remu(ub, ua);

    return 0;
}

#include <stdio.h>
#include <stdint.h>
#include <string.h>

void print_float(float f) {
    uint32_t u;
    memcpy(&u, &f, sizeof u);
    
    uint32_t s = (u >> 31) & 1;
    uint32_t e = (u >> 23) & 0xFF;
    uint32_t m = u & 0x7FFFFF;
    
    printf("%-14g s=%u e=%3u (2^%4d) m=0x%06x\n",
           (double)f, s, e, (int)e - 127, m);
}

int main(void) {
    print_float(1.0f);
    print_float(-6.25f);
    print_float(0.1f);
    print_float(1e-40f);
    print_float(1.0f / 0.0f);
    print_float(0.0f / 0.0f);
    return 0;
}
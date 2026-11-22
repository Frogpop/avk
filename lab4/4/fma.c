#include <stdio.h>
#include <stdint.h>
#include <string.h>

float fma_test(float a, float b, float c) {
    return a * b + c;
}

int main(void) {
    float a = 0x1.000002p0f;
    float b = 0x1.FFFFFEp-1f;
    float c = -1.0f;
    
    float r = fma_test(a, b, c);
    
    uint32_t bits;
    memcpy(&bits, &r, sizeof bits);
    
    printf("a = %.10g (0x%08X)\n", a, *(uint32_t*)&a);
    printf("b = %.10g (0x%08X)\n", b, *(uint32_t*)&b);
    printf("c = %.10g\n", c);
    printf("result = %.10g (0x%08X)\n", r, bits);
    
    if (r == 0.0f)
        printf("Результат: 0.0 (два округления)\n");
    else
        printf("Результат: ненулевой (одно округление, FMA)\n");
    
    return 0;
}
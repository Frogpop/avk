#define _POSIX_C_SOURCE 199309L
#include <stdio.h>
#include <time.h>
#include <immintrin.h>

#define N 10000000
#define RUNS 5

double get_median(double *arr) {
    for (int i = 0; i < 4; i++)
        for (int j = 0; j < 4 - i; j++)
            if (arr[j] > arr[j + 1]) {
                double t = arr[j]; arr[j] = arr[j + 1]; arr[j + 1] = t;
            }
    return arr[2];
}

static float sub_arr[N];
static float norm_arr[N];
static float result_arr[N];

double benchmark(int mode) {
    struct timespec start, end;
    clock_gettime(CLOCK_MONOTONIC, &start);
    
    for (int i = 0; i < N; i++) {
        float a, b, r;
        if (mode == 0) {
            a = norm_arr[i]; b = norm_arr[i];
        } else {
            a = sub_arr[i]; b = sub_arr[i];
        }
        asm volatile (
            "mulss %1, %0"
            : "=x" (r)
            : "x" (a), "0" (b)
        );
        result_arr[i] = r;
    }
    
    clock_gettime(CLOCK_MONOTONIC, &end);
    
    volatile float sink = 0;
    for (int i = 0; i < N; i++) sink += result_arr[i];
    if (sink < -1e30f) printf("never\n");
    
    return (end.tv_sec - start.tv_sec) + (end.tv_nsec - start.tv_nsec) * 1e-9;
}

int main() {
    for (int i = 0; i < N; i++) {
        norm_arr[i] = 1.5f;
        sub_arr[i] = 1e-40f;
    }
    
    double t_norm[RUNS], t_sub[RUNS], t_sub_ftz[RUNS];
    
    printf("MXCSR до изменений: 0x%08X\n", _mm_getcsr());
    
    _mm_setcsr(_mm_getcsr() & ~(_MM_FLUSH_ZERO_ON | _MM_DENORMALS_ZERO_ON));
    printf("После сброса: 0x%08X\n\n", _mm_getcsr());
    
    for (int r = 0; r < RUNS; r++) {
        t_norm[r] = benchmark(0);
        t_sub[r] = benchmark(1);
    }
    
    _mm_setcsr(_mm_getcsr() | _MM_FLUSH_ZERO_ON | _MM_DENORMALS_ZERO_ON);
    printf("--- С FTZ/DAZ ---\n");
    
    for (int r = 0; r < RUNS; r++) {
        t_sub_ftz[r] = benchmark(1);
    }
    
    printf("\nРезультаты (медиана из %d):\n", RUNS);
    printf("1. Нормальные (1.5 * 1.5):       %.6f сек\n", get_median(t_norm));
    printf("2. Субнормальные (1e-40 * 1e-40): %.6f сек\n", get_median(t_sub));
    printf("3. Субнормальные с FTZ/DAZ:       %.6f сек\n", get_median(t_sub_ftz));
    
    double ratio = get_median(t_sub) / get_median(t_sub_ftz);
    printf("\nОтношение sub/FTZ: %.2fx\n", ratio);
    
    return 0;
}
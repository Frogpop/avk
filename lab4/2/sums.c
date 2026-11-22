#include <stdio.h>
#include <stdlib.h>
#include <math.h>

static float sum_fwd(long n) {
    float s = 0.0f;
    for (long i = 1; i <= n; i++)
        s += 1.0f / (float)i;
    return s;
}

static float sum_bwd(long n) {
    float s = 0.0f;
    for (long i = n; i >= 1; i--)
        s += 1.0f / (float)i;
    return s;
}

static float sum_pair(long lo, long hi) {
    if (hi - lo == 1)
        return 1.0f / (float)lo;
    long mid = lo + (hi - lo) / 2;
    return sum_pair(lo, mid) + sum_pair(mid, hi);
}

static float sum_kahan(long n) {
    float s = 0.0f, c = 0.0f;
    for (long i = 1; i <= n; i++) {
        float y = 1.0f / (float)i - c;
        float t = s + y;
        c = (t - s) - y;
        s = t;
    }
    return s;
}

static long double sum_ref(long n) {
    long double s = 0.0L;
    for (long i = 1; i <= n; i++)
        s += 1.0L / (long double)i;
    return s;
}

int main(int argc, char **argv) {
    long n = (argc > 1) ? atol(argv[1]) : 1000000L;

    long double ref = sum_ref(n);
    printf("N = %ld\n", n);
    printf("reference (long double) = %.21Lg\n\n", ref);

    printf("%-10s  %-12s  %s\n", "method", "result", "rel.error");

    float r1 = sum_fwd(n);
    printf("%-10s  %-12.9g  %.3Le\n", "forward", (double)r1,
           fabsl((long double)r1 - ref) / fabsl(ref));

    float r2 = sum_bwd(n);
    printf("%-10s  %-12.9g  %.3Le\n", "backward", (double)r2,
           fabsl((long double)r2 - ref) / fabsl(ref));

    float r3 = sum_pair(1, n + 1);
    printf("%-10s  %-12.9g  %.3Le\n", "pairwise", (double)r3,
           fabsl((long double)r3 - ref) / fabsl(ref));

    float r4 = sum_kahan(n);
    printf("%-10s  %-12.9g  %.3Le\n", "kahan", (double)r4,
           fabsl((long double)r4 - ref) / fabsl(ref));

    return 0;
}
#define _POSIX_C_SOURCE 200809L
#include <limits.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/* ---- девять функций: реализуйте ---- */

uint32_t bswap32(uint32_t x) {
    return (x << 24) |
            ((x << 8) & 0x00FF0000u) |
            ((x >> 8) & 0x0000FF00u) |
            (x >> 24);
}

int      is_pow2(uint64_t x) {
    return (x != 0 ) & ((x & (x-1)) == 0);
}

uint32_t parity32(uint32_t x) {
    x ^= x >> 16;
    x ^= x >> 8;
    x ^= x >> 4;
    x ^= x >> 2;
    x ^= x >> 1;
    return x & 1;
}

uint32_t popcount32(uint32_t x) {
    x = x - ((x >> 1) & 0x55555555u);
    x = (x & 0x33333333u) + ((x >> 2) & 0x33333333u);
    x = (x + (x >> 4)) & 0x0F0F0F0Fu;
    return (x * 0x01010101u) >> 24;
}

uint32_t ctz32(uint32_t x) {
    static const uint8_t table[32] = {
        0, 1, 28, 2, 29, 14, 24, 3, 30, 22, 20, 15, 25, 17, 4, 8,
        31, 27, 13, 23, 21, 19, 16, 7, 26, 12, 18, 6, 11, 5, 10, 9
    };

    uint32_t v = x & (0u - x);
    v *= 0x077CB531u;

    return table[v>>27] + (x == 0) * 32;
}

uint32_t clz32(uint32_t x) {
    uint32_t orig = x;
    uint32_t n = 0;
    uint32_t m;
    
    m = (x >> 16 == 0); n += m << 4; x <<= (m << 4);
    m = (x >> 24 == 0); n += m << 3; x <<= (m << 3);
    m = (x >> 28 == 0); n += m << 2; x <<= (m << 2);
    m = (x >> 30 == 0); n += m << 1; x <<= (m << 1);
    m = (x >> 31 == 0); n += m;
    
    return n + (orig == 0);
}

uint64_t next_pow2(uint64_t x) {
    x -= (x != 0);
    x |= x >> 1;
    x |= x >> 2;
    x |= x >> 4;
    x |= x >> 8;
    x |= x >> 16;
    x |= x >> 32;
    return x + 1;
}

int64_t  sign_extend(uint64_t x, unsigned b) {
    uint64_t sh = (b != 64) * (64 - b);
    return (int64_t)(x << sh) >> sh;
}

int32_t  sat_add32(int32_t a, int32_t b) {
    int64_t s = (int64_t)a + b;
    int64_t pos = (s > INT32_MAX);
    int64_t neg = (s < INT32_MIN);
    int64_t ok = 1 - pos - neg;
    
    return (int32_t)(s * ok + (int64_t)INT32_MAX * pos + (int64_t)INT32_MIN * neg);
}

/* ---- проверки: main можно менять ---- */

static int fails;

static void check_u(const char *name, unsigned long long got, unsigned long long want) {
    if (got != want) {
        if (fails < 10)
            printf("FAIL %-12s got %llu, want %llu\n", name, got, want);
        fails++;
    }
}

static void check_s(const char *name, long long got, long long want) {
    if (got != want) {
        if (fails < 10)
            printf("FAIL %-12s got %lld, want %lld\n", name, got, want);
        fails++;
    }
}

static int64_t sign_extend_ref(uint64_t x, unsigned b) {
    unsigned sh = 64 - b;
    return (int64_t)(x << sh) >> sh;
}

static int32_t sat_add_ref(int32_t a, int32_t b) {
    long long s = (long long)a + b;
    if (s > INT32_MAX) return INT32_MAX;
    if (s < INT32_MIN) return INT32_MIN;
    return (int32_t)s;
}

static double now_sec(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
}

static int cmp_double(const void *pa, const void *pb) {
    double a = *(const double *)pa;
    double b = *(const double *)pb;
    return (a > b) - (a < b);
}

static void bench(void) {
    enum { N = 1 << 22 };
    static uint32_t a[N];
    uint32_t s = 2463534242u;
    for (unsigned i = 0; i < N; i++) {
        s ^= s << 13;
        s ^= s >> 17;
        s ^= s << 5;
        a[i] = s;
    }

    double t[5];
    for (int r = 0; r < 5; r++) {
        unsigned long long acc = 0;
        double t0 = now_sec();
        for (unsigned i = 0; i < N; i++)
            acc += popcount32(a[i]);
        t[r] = now_sec() - t0;
        printf("run %d: %.6f s, sum %llu\n", r + 1, t[r], acc);
    }

    qsort(t, 5, sizeof t[0], cmp_double);
    printf("median %.6f s, min %.6f, max %.6f, ns/element %.2f\n",
           t[2], t[0], t[4], t[2] * 1e9 / N);
}

int main(int argc, char **argv) {
    if (argc > 1 && argv[1][0] == '-') {
        bench();
        return 0;
    }

    check_u("bswap32", bswap32(0x0A0B0C0Du), 0x0D0C0B0Au);
    check_u("is_pow2", (unsigned)is_pow2(0), 0);
    check_u("is_pow2", (unsigned)is_pow2(1), 1);
    check_u("is_pow2", (unsigned)is_pow2(1ull << 63), 1);
    check_u("parity32", parity32(7u), 1);
    check_u("parity32", parity32(3u), 0);
    check_u("popcount32", popcount32(0u), 0);
    check_u("popcount32", popcount32(0xFFFFFFFFu), 32);
    check_s("sign_extend", sign_extend(0xFu, 4), -1);
    check_s("sign_extend", sign_extend(0x7u, 4), 7);
    check_s("sign_extend", sign_extend(0x80u, 8), -128);
    check_s("sign_extend", sign_extend(~0ull, 64), -1);
    check_s("sat_add32", sat_add32(INT32_MAX, 1), INT32_MAX);
    check_s("sat_add32", sat_add32(INT32_MIN, -1), INT32_MIN);
    check_u("next_pow2", next_pow2(0), 1);
    check_u("next_pow2", next_pow2(8), 8);
    check_u("next_pow2", next_pow2(9), 16);

    uint32_t x = 1;
    for (int i = 0; i < 200000; i++) {
        x = x * 1664525u + 1013904223u;
        check_u("popcount32", popcount32(x), (unsigned)__builtin_popcount(x));
        check_u("parity32", parity32(x), (unsigned)__builtin_parity(x));
        check_u("bswap32", bswap32(x), (unsigned)__builtin_bswap32(x));
        if (x != 0) {
            check_u("ctz32", ctz32(x), (unsigned)__builtin_ctz(x));
            check_u("clz32", clz32(x), (unsigned)__builtin_clz(x));
        }
        check_u("is_pow2", (unsigned)is_pow2(x),
                (unsigned)((x != 0) && ((x & (x - 1)) == 0)));
    }

    for (unsigned b = 1; b <= 64; b++) {
        uint64_t v = 0x0F0F0F0F0F0F0F0Full;
        check_s("sign_extend", sign_extend(v, b), sign_extend_ref(v, b));
        check_s("sign_extend", sign_extend(~v, b), sign_extend_ref(~v, b));
    }

    int32_t edge[] = {INT32_MAX, INT32_MIN, -1, 0, 1, 12345, -12345};
    for (unsigned i = 0; i < sizeof edge / sizeof edge[0]; i++) {
        for (unsigned j = 0; j < sizeof edge / sizeof edge[0]; j++) {
            check_s("sat_add32", sat_add32(edge[i], edge[j]),
                    sat_add_ref(edge[i], edge[j]));
        }
    }

    uint64_t pw[] = {0, 1, 2, 3, 7, 8, 9,
                     (1ull << 31) - 1, 1ull << 31,
                     (1ull << 62) - 1, 1ull << 62, 1ull << 63};
    for (unsigned i = 0; i < sizeof pw / sizeof pw[0]; i++) {
        uint64_t p = next_pow2(pw[i]);
        int ok = p >= pw[i] && (p & (p - 1)) == 0 &&
                 (pw[i] <= 1 || p / 2 < pw[i]);
        if (!ok) {
            printf("FAIL next_pow2(%llu) = %llu\n",
                   (unsigned long long)pw[i], (unsigned long long)p);
            fails++;
        }
    }

    if (fails) {
        printf("FAILED: %d\n", fails);
        return 1;
    }
    puts("OK");
    return 0;
}
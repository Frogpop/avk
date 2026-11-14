#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define MAXN 768
#define RUNS 5

static int n;
static double a[MAXN][MAXN], b[MAXN][MAXN], c[MAXN][MAXN];

static double now(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return ts.tv_sec + ts.tv_nsec * 1e-9;
}

static void init(void) {
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++) {
            a[i][j] = (double)rand() / RAND_MAX;
            b[i][j] = (double)rand() / RAND_MAX;
        }
}

static void mul_ijk(void) {
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++) {
            double s = 0.0;
            for (int k = 0; k < n; k++)
                s += a[i][k] * b[k][j];
            c[i][j] = s;
        }
}

static void mul_ikj(void) {
    for (int i = 0; i < n; i++)
        for (int k = 0; k < n; k++) {
            double aik = a[i][k];
            for (int j = 0; j < n; j++)
                c[i][j] += aik * b[k][j];
        }
}

static void mul_jik(void) {
    for (int j = 0; j < n; j++)
        for (int i = 0; i < n; i++) {
            double s = 0.0;
            for (int k = 0; k < n; k++)
                s += a[i][k] * b[k][j];
            c[i][j] = s;
        }
}

static void mul_jki(void) {
    for (int j = 0; j < n; j++)
        for (int k = 0; k < n; k++) {
            double bkj = b[k][j];
            for (int i = 0; i < n; i++)
                c[i][j] += a[i][k] * bkj;
        }
}

static void mul_kij(void) {
    for (int k = 0; k < n; k++)
        for (int i = 0; i < n; i++) {
            double aik = a[i][k];
            for (int j = 0; j < n; j++)
                c[i][j] += aik * b[k][j];
        }
}

static void mul_kji(void) {
    for (int k = 0; k < n; k++)
        for (int j = 0; j < n; j++) {
            double bkj = b[k][j];
            for (int i = 0; i < n; i++)
                c[i][j] += a[i][k] * bkj;
        }
}


typedef void (*mul_fn)(void);

int main(void) {
    const int sizes[] = {128, 256, 384, 512, 1024};
    const int nsizes = (int)(sizeof sizes / sizeof sizes[0]);
    struct { const char *name; mul_fn fn; } methods[] = {
        {"ijk", mul_ijk}, {"ikj", mul_ikj}, {"jik", mul_jik},
        {"jki", mul_jki}, {"kij", mul_kij}, {"kji", mul_kji},
    };

    printf("n,method,run,seconds,gflops,control\n");
    for (int s = 0; s < nsizes; s++) {
        n = sizes[s];
        init();
        for (int m = 0; m < 6; m++) {
            for (int r = 1; r <= RUNS; r++) {
                for (int i = 0; i < n; i++)
                    for (int j = 0; j < n; j++)
                        c[i][j] = 0.0;

                double t0 = now();
                methods[m].fn();
                double t = now() - t0;

                printf("%d,%s,%d,%.6f,%.3f,%.9f\n",
                       n, methods[m].name, r, t,
                       2.0 * n * n * n / t / 1e9, c[7][7]);
            }
        }
    }
    return 0;
}
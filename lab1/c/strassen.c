#define _POSIX_C_SOURCE 200809L
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define MAXN 1024
#define RUNS 5

#define THRESHOLD 64
#define MAX_DEPTH 12

static int n;
static double a[MAXN][MAXN], b[MAXN][MAXN];
static double c[MAXN][MAXN], ref[MAXN][MAXN];

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

/* Эталон: обычное умножение, нужно для проверки и как базовый случай. */
static void naive(double out[MAXN][MAXN]) {
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++) {
            double s = 0;
            for (int k = 0; k < n; k++)
                s += a[i][k] * b[k][j];
            out[i][j] = s;
        }
}

typedef struct {
    double *data;
    int stride;
} Sub;

static inline double get(Sub m, int i, int j) {
    return m.data[i * m.stride + j];
}

static inline void set(Sub m, int i, int j, double v) {
    m.data[i * m.stride + j] = v;
}

// Базовый случай: наивное умножение подматрицы
static void naive_sub(Sub C, Sub A, Sub B, int sz) {
    for (int i = 0; i < sz; i++)
        for (int j = 0; j < sz; j++) {
            double s = 0.0;
            for (int k = 0; k < sz; k++)
                s += get(A, i, k) * get(B, k, j);
            set(C, i, j, s);
        }
}

// Сложение/вычитание подматриц во временный плотный буфер (stride = sz)
static void add_sub(double *dst, Sub a, Sub b, int sz) {
    for (int i = 0; i < sz; i++)
        for (int j = 0; j < sz; j++)
            dst[i * sz + j] = get(a, i, j) + get(b, i, j);
}

static void sub_sub(double *dst, Sub a, Sub b, int sz) {
    for (int i = 0; i < sz; i++)
        for (int j = 0; j < sz; j++)
            dst[i * sz + j] = get(a, i, j) - get(b, i, j);
}

// Глобальные временные буферы (индексируются по глубине рекурсии)
static double tmp_A[MAX_DEPTH][4 * (MAXN / 2) * (MAXN / 2)];
static double tmp_B[MAX_DEPTH][4 * (MAXN / 2) * (MAXN / 2)];
static double tmp_M[MAX_DEPTH][7 * (MAXN / 2) * (MAXN / 2)];

#define BLOCK(buf, idx) ((buf) + (idx) * h * h)

// Рекурсивная функция Штрассена
static void strassen_rec(Sub C, Sub A, Sub B, int sz, int depth) {
    if (sz <= THRESHOLD) {
        naive_sub(C, A, B, sz);
        return;
    }

    int h = sz / 2;

    Sub A11 = { A.data, A.stride };
    Sub A12 = { A.data + h, A.stride };
    Sub A21 = { A.data + h * A.stride, A.stride };
    Sub A22 = { A.data + h * A.stride + h, A.stride };

    Sub B11 = { B.data, B.stride };
    Sub B12 = { B.data + h, B.stride };
    Sub B21 = { B.data + h * B.stride, B.stride };
    Sub B22 = { B.data + h * B.stride + h, B.stride };

    Sub C11 = { C.data, C.stride };
    Sub C12 = { C.data + h, C.stride };
    Sub C21 = { C.data + h * C.stride, C.stride };
    Sub C22 = { C.data + h * C.stride + h, C.stride };

    double *tA = tmp_A[depth];
    double *tB = tmp_B[depth];
    double *tM = tmp_M[depth];

    // M1 = (A11 + A22) * (B11 + B22)
    add_sub(BLOCK(tA, 0), A11, A22, h);
    add_sub(BLOCK(tB, 0), B11, B22, h);
    strassen_rec((Sub){BLOCK(tM, 0), h}, (Sub){BLOCK(tA, 0), h}, (Sub){BLOCK(tB, 0), h}, h, depth + 1);

    // M2 = (A21 + A22) * B11
    add_sub(BLOCK(tA, 1), A21, A22, h);
    strassen_rec((Sub){BLOCK(tM, 1), h}, (Sub){BLOCK(tA, 1), h}, B11, h, depth + 1);

    // M3 = A11 * (B12 - B22)
    sub_sub(BLOCK(tB, 1), B12, B22, h);
    strassen_rec((Sub){BLOCK(tM, 2), h}, A11, (Sub){BLOCK(tB, 1), h}, h, depth + 1);

    // M4 = A22 * (B21 - B11)
    sub_sub(BLOCK(tB, 2), B21, B11, h);
    strassen_rec((Sub){BLOCK(tM, 3), h}, A22, (Sub){BLOCK(tB, 2), h}, h, depth + 1);

    // M5 = (A11 + A12) * B22
    add_sub(BLOCK(tA, 2), A11, A12, h);
    strassen_rec((Sub){BLOCK(tM, 4), h}, (Sub){BLOCK(tA, 2), h}, B22, h, depth + 1);

    // M6 = (A21 - A11) * (B11 + B12)
    sub_sub(BLOCK(tA, 3), A21, A11, h);
    add_sub(BLOCK(tB, 3), B11, B12, h);
    strassen_rec((Sub){BLOCK(tM, 5), h}, (Sub){BLOCK(tA, 3), h}, (Sub){BLOCK(tB, 3), h}, h, depth + 1);

    // M7 = (A12 - A22) * (B21 + B22)
    sub_sub(BLOCK(tA, 3), A12, A22, h);  // переиспользуем tA[3]
    add_sub(BLOCK(tB, 3), B21, B22, h);  // переиспользуем tB[3]
    strassen_rec((Sub){BLOCK(tM, 6), h}, (Sub){BLOCK(tA, 3), h}, (Sub){BLOCK(tB, 3), h}, h, depth + 1);

    // C11 = M1 + M4 - M5 + M7
    for (int i = 0; i < h; i++)
        for (int j = 0; j < h; j++)
            set(C11, i, j,
                BLOCK(tM, 0)[i * h + j] + BLOCK(tM, 3)[i * h + j]
              - BLOCK(tM, 4)[i * h + j] + BLOCK(tM, 6)[i * h + j]);

    // C12 = M3 + M5
    for (int i = 0; i < h; i++)
        for (int j = 0; j < h; j++)
            set(C12, i, j,
                BLOCK(tM, 2)[i * h + j] + BLOCK(tM, 4)[i * h + j]);

    // C21 = M2 + M4
    for (int i = 0; i < h; i++)
        for (int j = 0; j < h; j++)
            set(C21, i, j,
                BLOCK(tM, 1)[i * h + j] + BLOCK(tM, 3)[i * h + j]);

    // C22 = M1 - M2 + M3 + M6
    for (int i = 0; i < h; i++)
        for (int j = 0; j < h; j++)
            set(C22, i, j,
                BLOCK(tM, 0)[i * h + j] - BLOCK(tM, 1)[i * h + j]
              + BLOCK(tM, 2)[i * h + j] + BLOCK(tM, 5)[i * h + j]);
}

static void strassen(void) {
    Sub A = { &a[0][0], MAXN };
    Sub B = { &b[0][0], MAXN };
    Sub C = { &c[0][0], MAXN };
    strassen_rec(C, A, B, n, 0);
}

static double maxdiff(void) {
    double d = 0;
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++) {
            double x = fabs(c[i][j] - ref[i][j]);
            if (x > d) d = x;
        }
    return d;
}

int main(void) {
    const int sizes[] = {128, 256, 512, 1024};
    const int nsizes = (int)(sizeof sizes / sizeof sizes[0]);

    printf("n,method,run,seconds,gflops,maxdiff\n");
    for (int s = 0; s < nsizes; s++) {
        n = sizes[s];
        init();
        naive(ref);

        for (int m = 0; m < 2; m++) {
            const char *name = m ? "strassen" : "naive";
            for (int r = 1; r <= RUNS; r++) {
                for (int i = 0; i < n; i++)
                    for (int j = 0; j < n; j++)
                        c[i][j] = 0.0;

                double t0 = now();
                if (m) strassen();
                else   naive(c);
                double t = now() - t0;

                printf("%d,%s,%d,%.6f,%.3f,%.3e\n",
                       n, name, r, t, 2.0 * n * n * n / t / 1e9, maxdiff());
            }
        }
    }
    return 0;
}
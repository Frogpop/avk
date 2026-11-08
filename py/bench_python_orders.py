import csv
import random
import statistics
import time

from student import matmul

sizes = [64, 128, 256, 512, 1024]
runs = 3
orders = ["ijk", "ikj", "jik", "jki", "kij", "kji"]

rows = []

for n in sizes:
    a = [[random.random() for _ in range(n)] for _ in range(n)]
    b = [[random.random() for _ in range(n)] for _ in range(n)]

    for order in orders:
        times = []
        control = None
        for r in range(runs):
            t0 = time.perf_counter()
            c = matmul(a, b, order=order)
            t = time.perf_counter() - t0
            times.append(t)
            control = c[7][7]

        med = statistics.median(times)
        gflops = 2 * n ** 3 / med / 1e9
        rows.append((n, order, med, gflops, control))
        print(f"n={n:3d} {order}: {med:.3f}s, {gflops:.4f} GFLOPS, c[7][7]={control:.6f}")

with open("python-orders.csv", "w", newline="") as f:
    w = csv.writer(f)
    w.writerow(["n", "method", "seconds", "gflops", "control"])
    w.writerows(rows)
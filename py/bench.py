import csv
import random
import statistics
import time

from student import matmul

n = 256
runs = 5
rows = []

for run in range(1, runs + 1):
    a = [[random.random() for _ in range(n)] for _ in range(n)]
    b = [[random.random() for _ in range(n)] for _ in range(n)]

    t0 = time.perf_counter()
    c = matmul(a, b)
    t = time.perf_counter() - t0

    rows.append((run, t, 2 * n**3 / t / 1e9))
    print(f"run {run}: {t:.3f} s, {rows[-1][2]:.4f} GFLOPS, c[0][0]={c[0][0]:.3f}")

with open("python-matmul.csv", "w", newline="") as f:
    w = csv.writer(f)
    w.writerow(["run", "seconds", "gflops"])
    w.writerows(rows)

med = statistics.median(r[1] for r in rows)
print(f"median: {med:.3f} s, {2 * n**3 / med / 1e9:.4f} GFLOPS")
print(f"оценка для n = 1024: {med * 64:.0f} s")
import csv
import statistics

import matplotlib.pyplot as plt

data = {}
with open("strassen.csv", encoding='utf-16') as f:
    for row in csv.DictReader(f):
        key = (row["method"], int(row["n"]))
        data.setdefault(key, []).append(float(row["seconds"]))

for method in ["naive", "strassen"]:
    ns = sorted(n for (m, n) in data if m == method)
    med = [statistics.median(data[(method, n)]) for n in ns]
    plt.plot(ns, med, "o-", label=method)

plt.xscale("log", base=2)
plt.yscale("log")
plt.xlabel("размер матрицы n")
plt.ylabel("медиана времени, с")
plt.legend()
plt.grid(True, which="both")
plt.savefig("strassen.png", dpi=150)
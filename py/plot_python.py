import csv

import matplotlib.pyplot as plt

rows = list(csv.DictReader(open("python-matmul.csv")))
xs = [int(r["run"]) for r in rows]
ys = [float(r["seconds"]) for r in rows]

plt.plot(xs, ys, "o-")
plt.xlabel("запуск")
plt.ylabel("время, с")
plt.title("Python: умножение матриц 256x256")
plt.grid(True)
plt.savefig("python-matmul.png", dpi=150)
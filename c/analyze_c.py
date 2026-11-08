import csv
import io
import os
import statistics
from collections import defaultdict

import matplotlib.pyplot as plt

FILES_TO_PROCESS = {
    "matmul_O0.csv": "O0 (без оптимизации)",
    "matmul.csv": "O2 (стандартная)",
    "matmul_O3.csv": "O3 -march=native",
}

METHODS = ["ijk", "ikj", "jik", "jki", "kij", "kji"]
COLORS  = ["#0072B2", "#E69F00", "#009E73", "#D55E00", "#CC79A7", "#56B4E9"]
MARKERS = ["o", "s", "^", "D", "v", "P"]


def read_csv_auto(filename):
    for enc in ("utf-8-sig", "utf-8", "utf-16", "cp1251"):
        try:
            with open(filename, "r", encoding=enc) as f:
                content = f.read()
            return list(csv.DictReader(io.StringIO(content)))
        except (UnicodeDecodeError, UnicodeError):
            continue
    raise RuntimeError(f"Не удалось прочитать {filename} ни в одной кодировке")


data = defaultdict(lambda: defaultdict(lambda: defaultdict(list)))
controls = defaultdict(lambda: defaultdict(dict))

for filename, opt_name in FILES_TO_PROCESS.items():
    if not os.path.exists(filename):
        print(f"Файл {filename} не найден, пропускаем.")
        continue

    try:
        rows = read_csv_auto(filename)
    except RuntimeError as e:
        print(e)
        continue

    for row in rows:
        n = int(row["n"])
        method = row["method"]
        seconds = float(row["seconds"])
        data[opt_name][method][n].append(seconds)

        if "control" in row:
            controls[opt_name][n][method] = float(row["control"])




for opt_name, per_n in controls.items():
    print(f"\n--- {opt_name} ---")
    for n in sorted(per_n.keys()):
        vals = per_n[n]
        unique = set(round(v, 6) for v in vals.values())
        status = "OK" if len(unique) == 1 else "РАЗБРОС"
        print(f"  n={n}: {status}  (значения: "
              + ", ".join(f"{m}={v:.6f}" for m, v in vals.items()) + ")")



print("\n" + "=" * 80)
print("ТАБЛИЦЫ МЕДИАН ВРЕМЕНИ (секунды)")
print("=" * 80)

for opt_name, methods_data in data.items():
    print(f"\n--- {opt_name} ---")
    all_n = sorted({n for md in methods_data.values() for n in md})

    header = f"{'n':<5} | " + " | ".join(f"{m:<8}" for m in METHODS)
    print(header)
    print("-" * len(header))

    for n in all_n:
        meds = []
        for method in METHODS:
            times = methods_data[method].get(n, [])
            meds.append(statistics.median(times) if times else None)

        valid = [m for m in meds if m is not None]
        min_med = min(valid) if valid else None

        row = f"{n:<5} | "
        for m in meds:
            if m is None:
                row += f"{'N/A':<8} | "
            else:
                marker = "*" if m == min_med else " "
                row += f"{marker}{m:<7.4f} | "
        print(row)




plot_opts = [k for k in FILES_TO_PROCESS.values() if k in data]
if not plot_opts:
    print("\nНет данных для построения графика.")
else:
    n_plots = len(plot_opts)
    fig, axes = plt.subplots(1, n_plots, figsize=(6 * n_plots, 5), squeeze=False)
    axes = axes.flatten()

    for idx, opt_name in enumerate(plot_opts):
        ax = axes[idx]
        methods_data = data[opt_name]
        all_n = sorted({n for md in methods_data.values() for n in md})

        for method, color, marker in zip(METHODS, COLORS, MARKERS):
            meds = []
            for n in all_n:
                times = methods_data[method].get(n, [])
                meds.append(statistics.median(times) if times else 0)
            ax.plot(all_n, meds, marker=marker, color=color,
                    label=method, linewidth=2, markersize=7)

        ax.set_xscale("log", base=2)
        ax.set_yscale("log")
        ax.set_xlabel("размер матрицы n")
        ax.set_ylabel("медиана времени, с")
        ax.set_title(f"C: {opt_name}")
        ax.legend(title="порядок", fontsize=8, title_fontsize=9)
        ax.grid(True, which="both", linestyle="--", alpha=0.6)

    plt.tight_layout()
    out_png = "matmul-orders.png"
    plt.savefig(out_png, dpi=150)
    print(f"\nГрафик сохранён: {out_png}")
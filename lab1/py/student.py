def matmul(a, b, order="ijk"):
    n = len(a)
    c = [[0.0] * n for _ in range(n)]

    if order == "ijk":
        for i in range(n):
            for j in range(n):
                s = 0.0
                for k in range(n):
                    s += a[i][k] * b[k][j]
                c[i][j] = s

    elif order == "ikj":
        for i in range(n):
            for k in range(n):
                aik = a[i][k]
                for j in range(n):
                    c[i][j] += aik * b[k][j]

    elif order == "jik":
        for j in range(n):
            for i in range(n):
                s = 0.0
                for k in range(n):
                    s += a[i][k] * b[k][j]
                c[i][j] = s

    elif order == "jki":
        for j in range(n):
            for k in range(n):
                bkj = b[k][j]
                for i in range(n):
                    c[i][j] += a[i][k] * bkj

    elif order == "kij":
        for k in range(n):
            for i in range(n):
                aik = a[i][k]
                for j in range(n):
                    c[i][j] += aik * b[k][j]

    elif order == "kji":
        for k in range(n):
            for j in range(n):
                bkj = b[k][j]
                for i in range(n):
                    c[i][j] += a[i][k] * bkj

    else:
        raise ValueError(f"unknown order: {order}")

    return c
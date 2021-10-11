points = [[1, 2, 3], [3, 4, 5], [5, 6, 7]]
qpoint = [3, 6, 5]
m = min(v := ([sum([(i-j)**2 for i, j in zip(p, qpoint)]) for p in points])); v.index(m)

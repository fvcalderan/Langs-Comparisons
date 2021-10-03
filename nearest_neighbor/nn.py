points = [[1, 2, 3], [3, 4, 5], [5, 6, 7]]
qpoint = [3, 6, 5]
min_i = -1
min_d = 10E10
for i, point in enumerate(points):
    dist = sum([(dp - dq)**2 for dp, dq in zip(point, qpoint)])**0.5
    min_i = i if dist <= (min_d := min(dist, min_d)) else min_i
print(min_i)

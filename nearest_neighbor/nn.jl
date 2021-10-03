using LinearAlgebra
points = [[1, 2, 3], [3, 4, 5], [5, 6, 7]]
qpoint = [3, 6, 5]
argmin([norm(p - qpoint) for p in points])

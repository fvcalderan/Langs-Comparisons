points = [[1, 2, 3], [3, 4, 5], [5, 6, 7]]
qpoint = [3, 6, 5]
snd $ minimum $ zip [sum [i**2 | i <- zipWith (-) x y] | (x,y) <- zip points $ replicate (length points) qpoint] [0..length points]

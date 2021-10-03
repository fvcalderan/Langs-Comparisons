points = [1 2 3 ; 3 4 5 ; 5 6 7]
qpoint = [3 6 5]
[minValue minIndex] = min(sqrt(sum((points-qpoint).^2,2)))

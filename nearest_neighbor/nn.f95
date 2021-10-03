Program NearestNeighbor
    real, dimension(3) :: qpoint
    real, dimension(3, 3) :: points
    qpoint = reshape((/ 3, 6, 5/), shape(qpoint))
    points = transpose(reshape((/ 1,2,3,3,4,5,5,6,7/),(/size(points,2),size(points,1)/)))
    write(*,*) minloc(norm2(points-spread(qpoint, 1, size(points, 1)), 2))
End Program NearestNeighbor

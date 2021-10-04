Program NearestNeighbor
    real, dimension(3) :: qpoint = (/3,6,5/)
    real, dimension(3,3) :: points = transpose(reshape((/1,2,3,3,4,5,5,6,7/),(/3,3/)))
    write(*,*) minloc(norm2(points-spread(qpoint, 1, size(points, 1)), 2))
End Program NearestNeighbor

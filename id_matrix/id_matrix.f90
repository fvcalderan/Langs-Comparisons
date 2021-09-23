! fpelogia
program id_matrix
implicit none
integer, dimension(10,10) :: m
integer :: i,j
do i=1,10
    write(*,*) (merge(1,0,i==j), j=1,10)
end do
end program

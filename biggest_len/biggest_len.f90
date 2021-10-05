! fpelogia
program biggest_len
implicit none

character(len=20) :: s1 = "Here" ,s2 = "are", s3 = "some", &
    s4 = "extraordinary", s5 = "words"
character(len=20), allocatable :: v(:)

allocate(v(5))
v = [s1, s2, s3, s4, s5]
write(*,*) maxval(len_trim(v))
deallocate(v)
end program

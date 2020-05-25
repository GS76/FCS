! Created by EverLookNeverSee@GitHub on 5/25/20.
! This program computes the product of two given matrices.

program matrix_product
    implicit none
    ! declaring variables
    integer :: m, n, o, p, i, j, k
    ! declaring matrices
    real, allocatable, dimension(:,:) :: A, B, C

    print *, "Matrix A:"
    do
        print *, "Enter number of rows and columns for matrix A:"
        read *, m, n
        if (m <= 0 .or. n <= 0) then
            print *, "number of rows and columns should be positive integers"
            print *, "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
            cycle
        end if
        exit
    end do

    print *, "Matrix B:"
    do
        print *, "Enter number of rows and columns for matrix B:"
        read *, o, p
        if (o <= 0 .or. p <= 0) then
            print *, "number of rows and columns should be positive integers"
            print *, "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
            cycle
        end if
        if (n /= o) then
            print *, "Number columns in matrix A should be equal to number of rows in matrix B."
            cycle
        end if
        exit
    end do
end program matrix_product
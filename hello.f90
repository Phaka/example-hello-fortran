! A minimal modern Fortran implementation using Fortran 90 free-form source
! The .f90 extension indicates this is free-form source code rather than
! fixed-form FORTRAN 77 style (which would use .f or .for)

program hello
    ! The implicit none statement is considered best practice in modern Fortran
    ! It requires all variables to be explicitly declared, preventing a major
    ! source of bugs in older Fortran programs where variables beginning with
    ! i-n were implicitly integer and others were real
    implicit none
    
    ! In Fortran 90, we can use the print * syntax for simple output
    ! This is equivalent to WRITE(*,*) in older versions
    print *, 'Hello, World!'
end program hello

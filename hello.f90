# Fortran Hello World Example

This example demonstrates a modern Fortran implementation of "Hello, World!" using the Fortran 90 standard. Fortran, whose name comes from "Formula Translation," was the first high-level programming language and remains vital in scientific computing, particularly in weather forecasting, computational physics, and astronomy.

## Understanding Fortran's Evolution

Fortran has evolved significantly since its introduction in 1957. Our implementation uses Fortran 90, which marked a major modernization of the language. Let's understand why this matters:

Early Fortran (pre-1990) used a fixed-form source format inherited from punch cards:
- Columns 1-5: Line numbers
- Column 6: Continuation marker
- Columns 7-72: Code
- Columns 73-80: Comments

Modern Fortran (90 and later) introduced free-form source code, which:
- Removed column restrictions
- Added meaningful whitespace
- Introduced new control structures
- Added modules and derived types
- Brought array operations and dynamic memory

This evolution mirrors the development of programming languages as a whole, from hardware-constrained beginnings to modern software engineering practices.

## Prerequisites

You'll need a Fortran compiler. We'll use GFortran, part of the GNU Compiler Collection:

### Linux
On Debian/Ubuntu:
```bash
sudo apt update
sudo apt install gfortran
```

On Fedora:
```bash
sudo dnf install gcc-gfortran
```

### macOS
Using Homebrew:
```bash
brew install gcc
```
This installs gfortran along with GCC.

### Windows
Download MinGW-w64 with Fortran support from:
https://winlibs.com/

Or install using MSYS2:
```bash
pacman -S mingw-w64-x86_64-gcc-fortran
```

## Compiling

The compilation process is consistent across platforms, though output names differ:

### Linux and macOS
```bash
gfortran hello.f90 -o hello
```

### Windows
```cmd
gfortran hello.f90 -o hello.exe
```

The `.f90` extension tells the compiler to use Fortran 90 free-form source format. If we used `.f` or `.for`, it would assume fixed-form source.

## Running

### Linux and macOS
```bash
./hello
```

### Windows
```cmd
hello.exe
```
Or from PowerShell:
```powershell
.\hello.exe
```

## Understanding the Code

Let's examine our Fortran implementation in detail:

```fortran
program hello
    implicit none
    print *, 'Hello, World!'
end program hello
```

This simple program demonstrates several important Fortran concepts:

1. Program Structure:
   - The `program` statement begins the main program unit
   - The name must match between `program` and `end program` statements
   - Unlike C or Python, Fortran requires an explicit program declaration

2. Modern Safety Features:
   - `implicit none` is a crucial statement in modern Fortran
   - In early Fortran, variables beginning with I-N were implicitly integer type
   - This implicit typing was a major source of bugs
   - `implicit none` requires explicit declaration of all variables
   - While not strictly needed for our simple example, it's considered best practice

3. Output Mechanism:
   - `print *` is a simplified form of Fortran's output statement
   - The asterisk specifies default formatting
   - This is equivalent to `write(*,*)` in more formal Fortran code
   - Single quotes are used for string literals

4. Comments:
   - Fortran 90 uses `!` for comments, simpler than fixed-form Fortran's approach
   - Comments can appear anywhere on a line
   - This replaced the older 'C' in column 1 or content in columns 73-80

## Historical Context

Fortran's evolution reflects the history of computing itself:
- 1957: FORTRAN I - First high-level language compiler
- 1958: FORTRAN II - Added subroutines
- 1962: FORTRAN IV - Standardized version
- 1977: FORTRAN 77 - First ANSI standard
- 1990: Fortran 90 - Major modernization
- 1995-2018: Fortran 95, 2003, 2008, 2018 - Continued evolution

Modern Fortran remains crucial in scientific computing because:
- It excels at array operations and numerical computation
- It can easily interface with legacy scientific code
- It can achieve performance comparable to C
- It has excellent parallel computing support

## Verifying the Build

Examine the compiled program:

### Linux
```bash
# Check binary size
ls -l hello
# Check dynamic dependencies
ldd hello
```

### macOS
```bash
# Check binary size
ls -l hello
# Check dynamic dependencies
otool -L hello
```

### Windows
```cmd
dir hello.exe
dumpbin /dependents hello.exe
```

## Further Reading

- "Modern Fortran Explained" - Metcalf, Reid, and Cohen
- [GFortran Manual](https://gcc.gnu.org/onlinedocs/gfortran/)
- [Fortran Standards](https://wg5-fortran.org/)
- "Introduction to Programming with Fortran" - Chivers and Sleightholme

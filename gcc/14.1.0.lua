-- GCC Compiler Module

-- Set the version and installation prefix
version = "14.1.0"
prefix = "/Users/zakaria/Softwares/tools/gcc-" .. version

-- Provide a description of the GCC compiler
whatis("GCC compiler")

-- Provide help text describing the GCC compiler
help([[
This module provides the GCC compiler.
--
GCC (GNU Compiler Collection) is a compiler system produced by the GNU Project
supporting various programming languages. It includes front ends for C, C++,
Objective-C, Fortran, Ada, Go, and D, as well as libraries for these languages.
The environment variables $PATH, $LD_LIBRARY_PATH, and $MANPATH are updated as needed.
]])

-- Add GCC binary, library, and man directory paths to the environment
prepend_path("PATH",            prefix .. "/bin")
prepend_path("LD_LIBRARY_PATH", prefix .. "/lib")
prepend_path("DYLD_LIBRARY_PATH", prefix .. "/lib")  -- For macOS
prepend_path("MANPATH",         prefix .. "/share/man")
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(prefix, "include"))
prepend_path("C_INCLUDE_PATH", pathJoin(prefix, "include"))

-- Set the compilers environment variables
setenv("CC", "gcc")
setenv("CXX", "g++")
setenv("FC",  "gfortran")
setenv("F77", "gfortran")

--

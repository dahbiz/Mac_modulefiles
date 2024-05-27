-- OpenMPI Module

-- Set the version and installation prefix
local version = "4.2.1"
local home = os.getenv("HOME")
local prefix = pathJoin(home, "Softwares/tools/mpich-" .. version)


-- Provide a description of the mpi
whatis("MPITCH")

-- Provide help text describing the mpi
help([[
This module provides the MPITCH 4.2.1 library.
--

OpenMPI is a high performance message passing library.

This module sets up the environment for using OpenMPI by loading the
necessary dependencies and setting the appropriate environment variables.

Version: 4.2.1
Category: Libraries/Parallel Computing

Usage:
  To load the module, use the command:
    module load mpi/mpitch-4.2.1

  To unload the module, use the command:
    module unload mpi/mpitch-4.2.1
]])


-- Add binary, library, and man directory paths to the environment
prepend_path("PATH",            prefix .. "/bin")
prepend_path("LD_LIBRARY_PATH", prefix .. "/lib")
prepend_path("DYLD_LIBRARY_PATH", prefix .. "/lib")  -- For macOS
prepend_path("MANPATH",         prefix .. "/share/man")
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(prefix, "include"))
prepend_path("C_INCLUDE_PATH", pathJoin(prefix, "include"))
--

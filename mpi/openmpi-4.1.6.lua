-- OpenMPI Module

-- Set the version and installation prefix
local version = "4.1.6"
local home = os.getenv("HOME")
local prefix = pathJoin(home, "Softwares/tools/openmpi-" .. version)


-- Provide a description of the mpi
whatis("OpenMPI")

-- Provide help text describing the mpi
help([[
This module provides the OpenMPI 4.1.6 library.
--

OpenMPI is a high performance message passing library.

This module sets up the environment for using OpenMPI by loading the
necessary dependencies and setting the appropriate environment variables.

Version: 4.1.6
Category: Libraries/Parallel Computing
Website: https://www.open-mpi.org/

Usage:
  To load the module, use the command:
    module load openmpi/4.1.6

  To unload the module, use the command:
    module unload openmpi/4.1.6
]])


-- Add binary, library, and man directory paths to the environment
prepend_path("PATH",            prefix .. "/bin")
prepend_path("LD_LIBRARY_PATH", prefix .. "/lib")
prepend_path("DYLD_LIBRARY_PATH", prefix .. "/lib")  -- For macOS
prepend_path("MANPATH",         prefix .. "/share/man")
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(prefix, "include"))
prepend_path("C_INCLUDE_PATH", pathJoin(prefix, "include"))
--

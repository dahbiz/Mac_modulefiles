-- QPP lib Module

-- Set the version and installation prefix
local version = "5.1"
local home = os.getenv("HOME")
local prefix = pathJoin(home, "Softwares/tools/qpp-" .. version)


-- Provide a description
whatis("Quantum++ library")
-- QPP lib Module

-- Set the version and installation prefix
local version = "5.1"
local home = os.getenv("HOME")
local prefix = pathJoin(home, "Softwares/tools/qpp-" .. version)

-- Provide a description of the Quantum++ library
whatis("Quantum++ library")

-- Provide help text describing the Quantum++ library
help([[
Quantum++ is a high-performance, general-purpose quantum computing library.

This module sets up the environment for using Quantum++ by loading the
necessary dependencies and setting the appropriate environment variables.

Version: 5.1
Category: Libraries/Quantum Computing
Website: https://github.com/vsoftco/qpp

Usage:
  To load the module, use the command:
    module load quantum++

  To unload the module, use the command:
    module unload quantum++
]])

-- Add Quantum++ library path to the environment
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(prefix, "."))
prepend_path("C_INCLUDE_PATH", pathJoin(prefix, "."))


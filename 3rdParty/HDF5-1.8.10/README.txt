HDF5 version 1.8.10
Please refer to the release_docs/INSTALL file for installation instructions.
------------------------------------------------------------------------------

This release is fully functional for the API described in the documentation. 
See the RELEASE.txt file in the release_docs/ directory for information 
specific to this release of the library.  Several INSTALL* files can also be 
found in the release_docs/ directory:  INSTALL contains instructions for 
compiling and installing the library;  INSTALL_parallel contains instructions 
for installing the parallel version of the library;  similarly-named files
contain instructions for VMS and several environments on MS Windows systems. 

This directory contains the binary (release) distribution of 
HDF5 1.8 that was compiled on an Intel PC running Windows 7,
using Visual Studio 2010/Intel Fortran 12.  It was built with
the following options: 
    -- C/C++/Fortran libraries, shared
    -- SZIP (encoder enabled) and ZLIB
    -- Shared HDF5 tools
    -- ReleaseWithDebugInfo

The contents of this directory are:

    COPYING                 - Copyright notice
    USING_CMake.txt         - How to compile an application
    README.txt              - This file
    RELEASE.txt             - Detailed information regarding this release
    HDF5-1.8.10-win32.exe   - HDF5 Install Utility
    ACKNOWLEDGMENTS         - Thanks for contributions

Documentation for this release can be found at the following URL:
    http://www.hdfgroup.org/HDF5/doc/.

The following  mailing lists are currently set up for HDF5 Library users:

    news        - For announcements of HDF5 related developments,
                  not a discussion list.

    hdf-forum   - For general discussion of the HDF5 library with
                  other users.

    hdf5dev     - For discussion of the HDF5 library development
                  with developers and other interested parties.

To subscribe to a list, send mail to "<list>-subscribe@hdfgroup.org".
where <list> is the name of the list.  For example, send a request 
to subscribe to the 'news' mail list to the following address:
    news-subscribe@hdfgroup.org

Messages sent to the list should be addressed to "<list>@hdfgroup.org".

Periodic code snapshots are provided at the following URL:
    ftp://ftp.hdfgroup.uiuc.edu/pub/outgoing/hdf5/snapshots
Please read the README.txt file in that directory before working with a 
library snapshot.

The HDF5 website is located at http://hdfgroup.org/HDF5/

Bugs should be reported to help@hdfgroup.org.

#########################################
Production Volume Rendering for Windows #
#########################################

This is the Windows port of the rendering library for the book Production Volume Rendering. The original PVR repository does not include the third party libraries hence it is a nightmare to build the PVR library on Windows. This repository is self contained as it contains all required third party libraries. So you do not need to download anything additional. 

#####################
# Required Compiler #
#####################
All of the libraries including the third party libraries are built using VisualStudio 2010. For most of the third party libraries, the VisualStudio 2010 solution files are there so that you may recompile the dlls/libs according to your requirement.

################
# How to Build #
################
Prebuilt boost 1.5.1 binaries using VS2010 are already provided in the lib sub-folder of the boost root folder in the 3rdParty main folder. If you want to rebuilt the dlls on your machine, we have included two .bat files (build_boost_for_pvr.bat and build_boost_python_debug.bat). First, open visual studio 2010 command prompt and then run bootstrap.bat. Next, run build_boost_for_pvr.bat to build the boost libraries required for PVR. For projects using release version of python, please install python v 2.7 from https://www.python.org/downloads/release/python-2710/ and set the environment variable PYTHONHOME to point to the root folder of python. Additoinally, for debug builds of projects using python, you will need the debug libs of python 27. Pre-built python27 debug builds are available from here: http://www.p-nand-q.com/python/building-python-27-with-visual_studio.html. Next, run build_boost_python_debug.bat file in the boost distribution which should build debug boost python dlls. The .bat file will use the default Python installation location (C:\Python27). If you have installed Python to another location, kindly updated user-config.jam file. The libs and dlls will be stored in the stage/lib sub-folder. Move the lib folder out from the stage folder to the boost root folder. Finally, go to the vs2010 directory and open the pvrbook.sln project. 

############################
# How to Run Example Scene #
############################
Simply copy the required python scene file (for e.g. scenes/book/chapter_1/fig_1_1.py) in the vs2010/Debug or vs2010/Release sub-folder. Ensure that the correct dlls are copied to the correct location (debug dlls in debug while release dlls in release) otherwise the python interpretor may not recognize the loaded dll. Also invoke the correct version of python interpretor (python_d for debug and python for release).   

##############
# Developers #
##############
The main developer for this library are the original authors however this Windows port is developed by Dr. Muhammad Mobeen Movania with a lot of help from the developer of XRT renderer. More information about this is available in the comments of this blog post: http://xrt.wikidot.com/blog:46.

##############################################################
# Original Readme Starts Here ################################
##############################################################

###########################
Production Volume Rendering
###########################

This is the companion rendering library for the book Production Volume
Rendering. 

####################
### Dependencies ###
####################

PVR depends on the following libraries:

  Imath/Iex/Half
  boost_thread
  HDF5
  OpenImageIO
  Field3D
  GPD            (Included in code distribution)

On MacOSX, all of the above except OpenImageIO are available from MacPorts, which 
helps simplify their installation.

####################
### Building PVR ###
####################

After the code is checked out, cd into 'libpvr' and type 'scons -h'. This will 
list the available build targets.

scons lib
  Builds the shared library. (Which won't be of much use, but lets you check
  that the base builds ok.)

scons pylib
  Builds the python module, without installing it.

scons pyinstall
  Installs the python .so module and associated python files.
  This requires that you have set the PVR_PYTHON_PATH to indicate where the
  library gets installed. Typically this would be '~/python_libs', or something
  similar. The installation creates a 'pvr' directory in this path, and stores
  all the PVR python files there.

scons pypackage
  Creates a self-contained python module. This recursively analyzes which
  shared libraries the _pvr.so python module references, copies them to a
  libs/ subdir, and re-links the python module so that those are picked up
  upon import.

###############################
### Building on MacOSX Lion ###
###############################

The Python libraries that ship with OSX Lion are incompatible with GCC, and a 
small modification is required to the file "pyport.h". Scary, but necessary.

sudo emacs /System/Library/Frameworks/Python.framework/Versions/2.6/Headers/pyport.h

--- Include/pyport.h     (revision 933)
+++ Include/pyport.h     (working copy)
@@ -514,22 +514,40 @@
 #if __FreeBSD_version > 500039
 #include <ctype.h>
 #include <wctype.h>
+/* If the source file #includes <cctype> before "Python.h" then
+ * these macros will not be defined at this point and we
+ * should not define them either.
+ */
+#ifdef isalnum
 #undef isalnum
 #define isalnum(c) iswalnum(btowc(c))
+#endif
+#ifdef isalpha
 #undef isalpha
 #define isalpha(c) iswalpha(btowc(c))
+#endif
+#ifdef islower
 #undef islower
 #define islower(c) iswlower(btowc(c))
+#endif
+#ifdef isspace
 #undef isspace
 #define isspace(c) iswspace(btowc(c))
+#endif
+#ifdef isupper
 #undef isupper
 #define isupper(c) iswupper(btowc(c))
+#endif
+#ifdef tolower
 #undef tolower
 #define tolower(c) towlower(btowc(c))
+#endif
+#ifdef toupper
 #undef toupper
 #define toupper(c) towupper(btowc(c))
 #endif
 #endif
+#endif


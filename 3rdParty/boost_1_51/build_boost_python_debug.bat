@ECHO OFF
IF "%PYTHONHOME%" == "" GOTO NOPATH

:YESPATH
@ECHO The PYTHONHOME environment variable was detected.
bjam.exe toolset=msvc-10.0 --user-config=user-config.jam --with-python python-debugging=on threading=multi variant=debug link=shared stage
GOTO END

:NOPATH
@ECHO The PYTHONHOME environment variable was NOT detected. Defaulting to C:\Python27
bjam.exe toolset=msvc-10.0 --user-config=user-config-default.jam --with-python python-debugging=on threading=multi variant=debug link=shared stage
:END

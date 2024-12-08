set INSTALL_BASE=c:\MinGW\usr\local\djgpp\
set XC_PATH=%INSTALL_BASE%bin
set XPREFIX=i586-pc-msdosdjgpp-

set CROSSCOMPILE=1
set MINGDIR=%INSTALL_BASE%
set DJDIR=%INSTALL_BASE%
set NATIVEPATH=%PATH%
set PATH=%XC_PATH%;%NATIVEPATH%

mingw32-make %*

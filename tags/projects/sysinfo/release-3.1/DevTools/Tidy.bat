@rem ---------------------------------------------------------------------------
@rem Script used to delete System Information Unit's temp, backup files and
@rem test .dcu and .exe files.
@rem
@rem Copyright (C) Peter Johnson (www.delphidabbler.com), 2008
@rem
@rem v1.0 of 15 Apr 2008 - First version.
@rem ---------------------------------------------------------------------------

@echo off
setlocal

echo Tidying
echo ~~~~~~~
echo.

set SrcDir=..

echo Deleting *.~* from "%SrcDir%" and subfolders
del /S %SrcDir%\*.~* 
echo.

echo Deleting *.dpp from "%SrcDir%" and subfolders
del /S %SrcDir%\*.ddp 
echo.

echo Deleting *.dcu from "%SrcDir%" and subfolders
del /S %SrcDir%\*.dcu 
echo.

echo Deleting *.exe from "%SrcDir%" and subfolders
del /S %SrcDir%\*.exe 
echo.

echo Deleting *.dsk from "%SrcDir%" and subfolders
del /S %SrcDir%\*.dsk 
echo.

echo Done.

endlocal

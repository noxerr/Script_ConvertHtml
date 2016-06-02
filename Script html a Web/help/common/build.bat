@ECHO OFF

REM Build foders
SET BIN_DIR=..\..\..\libs\help
SET SRC_DIR=..
SET INT_DIR=..\..\..\obj\help
SET OUT_DIR=..\..\..\bin\%LANG_DISP%\%OUT_FOLDER%
SET LOG_FILE=%INT_DIR%\%LANG%\log.txt

REM Build
CALL "%BIN_DIR%\build.bat"

REM In FinalBuilder does not open the CHM
IF DEFINED FB_BUILD GOTO EXIT

REM Show CHM
IF EXIST "%OUT_DIR%\VisualARQ20.chm" GOTO SHOW
GOTO ERROR

:SHOW
"%OUT_DIR%\VisualARQ20.chm"
GOTO EXIT

:ERROR
"%LOG_FILE%"
GOTO EXIT

:EXIT
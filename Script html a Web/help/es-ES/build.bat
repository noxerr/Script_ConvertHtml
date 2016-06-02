@ECHO OFF

CHCP 1252

REM Language
SET LANG=es-ES
SET LANG_DISP=Español
SET OUT_FOLDER=Ayuda

REM Build
CALL "..\common\build.bat" 

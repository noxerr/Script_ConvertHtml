@ECHO OFF

CHCP 1252

REM Language
SET LANG=fr-FR
SET LANG_DISP=Fran�ais
SET OUT_FOLDER=Aide

REM Build
CALL "..\common\build.bat" 

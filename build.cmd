@ECHO OFF

IF [%1]==[] GOTO Usage
IF [%2]==[] GOTO Usage
GOTO Copy

:Usage
ECHO Using this script: "build.cmd <addon> <version>"
EXIT /B 1

:Copy
ECHO. & ECHO Copying addon files to a temporary folder...
ROBOCOPY /s /e build\%1 build\.tmp > NUL

:Create
ECHO. & ECHO Creating IPF...
python build\.tools\ipf.py -v -c -f build\%1-v%2.ipf build\.tmp

:Encrypt
ECHO. & ECHO Encrypting IPF...
build\.tools\ipf_unpack.exe build\%1-v%2.ipf encrypt

:Clean
ECHO. & ECHO Deleting temporary folder...
RMDIR /s /q build\.tmp

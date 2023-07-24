@echo off
set local

IF "%GGPO_SHARED_LIB%" == "" (
   echo GGPO_SHARED_LIB not set.  Defaulting to off
   set GGPO_SHARED_LIB=on
)

echo Generating GGPO Visual Studio solution files.
echo    GGPO_SHARED_LIB=on

cmake -G "Visual Studio 17 2022" -A x64 -B build -DBUILD_SHARED_LIBS=on

echo Finished!  Open build/GGPO.sln in Visual Studio to build.

IF "%1"=="--no-prompt" goto :done
:: pause so the user can see the output if they double clicked the configure script
pause 

:done

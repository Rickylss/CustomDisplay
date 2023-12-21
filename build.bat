@echo off
setlocal

set TOOLSET=v142
set VS_VER="Visual Studio 16 2019"
set SDK_VER=10.0.18362.0
set BUILD_DIR=build

:beginargs
if "%~1"=="" (
    goto endargs
)
if /i "%~1"=="-b" (
    set BUILD=ON
)
shift
goto beginargs
:endargs

cmake . -G %VS_VER% -T %TOOLSET% -B %BUILD_DIR% -DCMAKE_SYSTEM_VERSION=%SDK_VER%

if "%BUILD%" == "ON" (
    cmake --build %BUILD_DIR% --config Release -v
)

endlocal
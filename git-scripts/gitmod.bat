@echo off

:: todo - add help and usage

where rg >nul 2>nul
IF NOT ERRORLEVEL 0 (
    @echo ripgrep not found in path.
    exit /b
)

if "%~1"=="" (
git status --porcelain | rg "^[\sA][M]\s(.*)" -r "$1"
) else (
git status --porcelain | rg "^[\sA][M]\s(.*)" -r "$1"  | rg %1
)


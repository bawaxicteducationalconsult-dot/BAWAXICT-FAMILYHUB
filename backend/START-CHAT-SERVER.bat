@echo off
setlocal
cd /d "%~dp0"
where python >nul 2>&1
if errorlevel 1 (
  echo Python was not found on PATH.
  echo Install Python 3 and run this file again.
  pause
  exit /b 1
)
python server.py
if errorlevel 1 (
  echo.
  echo FamilyHub server stopped with an error.
)
pause

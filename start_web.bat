@echo off
setlocal
cd /d "%~dp0"
start "" "http://127.0.0.1:8060/"
where python >nul 2>nul
if %errorlevel%==0 (
  python -m http.server 8060 --bind 127.0.0.1
  exit /b
)
where py >nul 2>nul
if %errorlevel%==0 (
  py -3 -m http.server 8060 --bind 127.0.0.1
  exit /b
)
echo Python 3 was not found. Install Python or upload this folder to a static host.
pause

@echo off
REM One-time setup for Windows: creates the virtual environment,
REM installs dependencies, and prepares the database.
REM Safe to run again any time requirements.txt changes.

REM Move up from scripts\windows\ into the project root
cd /d "%~dp0..\.."

REM Find Python: use the "py" launcher if available, otherwise "python"
set "PY="
where py >nul 2>&1 && set "PY=py -3"
if not defined PY (
    where python >nul 2>&1 && set "PY=python"
)
if not defined PY (
    echo Python was not found. Install Python, then run this script again.
    goto :fail
)

REM Create the virtual environment if it doesn't exist yet
if not exist "venv\Scripts\python.exe" (
    echo Creating virtual environment...
    %PY% -m venv venv || goto :fail
)

REM Install the packages listed in requirements.txt (Django, etc.)
echo Installing requirements...
"venv\Scripts\python.exe" -m pip install -r requirements.txt || goto :fail

REM Make sure Django actually installed
"venv\Scripts\python.exe" -c "import django; print('Django', django.get_version(), 'installed')" || goto :fail

REM Create/update the database tables (db.sqlite3)
echo Setting up the database...
"venv\Scripts\python.exe" manage.py migrate || goto :fail

echo.
echo Setup complete. Run scripts\windows\windows_launch.bat to start the server.
pause
exit /b 0

:fail
echo.
echo Setup failed. Read the error above.
pause
exit /b 1
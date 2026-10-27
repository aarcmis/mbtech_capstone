@echo off
REM Starts the Django development server on Windows.
REM Run scripts\windows\windows_setup.bat first if you haven't already.

REM Move up from scripts\windows\ into the project root
cd /d "%~dp0..\.."

REM Make sure setup has been run
if not exist "venv\Scripts\python.exe" (
    echo Virtual environment not found. Run scripts\windows\windows_setup.bat first.
    goto :fail
)

REM Make sure Django is installed in the virtual environment
"venv\Scripts\python.exe" -c "import django" 2>nul || (
    echo Django is not installed. Run scripts\windows\windows_setup.bat first.
    goto :fail
)

REM Start the server at http://127.0.0.1:8000/ (Ctrl+C to stop)
echo Starting server at http://127.0.0.1:8000/  (press Ctrl+C to stop)
"venv\Scripts\python.exe" manage.py runserver || goto :fail
exit /b 0

:fail
echo.
pause
exit /b 1
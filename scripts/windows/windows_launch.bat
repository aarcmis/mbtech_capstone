@echo off
REM Starts the Django development server on Windows.
REM Run scripts\windows\windows_setup.bat first if you haven't already.

REM Move up from scripts\windows\ into the project root
cd /d "%~dp0..\.."

REM Activate the virtual environment created by setup
call venv\Scripts\activate.bat || exit /b 1

REM Start the server at http://127.0.0.1:8000/ (Ctrl+C to stop)
python manage.py runserver
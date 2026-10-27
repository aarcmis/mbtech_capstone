@echo off
REM One-time setup for Windows: creates the virtual environment,
REM installs dependencies, and prepares the database.
REM Lives in scripts\windows\ and runs from the project root.
REM Each step stops the script if it fails (|| exit /b 1).

REM Move up from scripts\windows\ into the project root
cd /d "%~dp0..\.."

REM Create a virtual environment in .\venv (reuses it if it already exists)
python -m venv venv || exit /b 1

REM Activate the virtual environment so pip/python use it
call venv\Scripts\activate.bat || exit /b 1

REM Install the packages listed in requirements.txt (Django, etc.)
pip install -r requirements.txt || exit /b 1

REM Create/update the database tables (db.sqlite3)
python manage.py migrate || exit /b 1
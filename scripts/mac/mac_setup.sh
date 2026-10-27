#!/bin/bash
# One-time setup for macOS: creates the virtual environment,
# installs dependencies, and prepares the database.
# Lives in scripts/mac/ and runs from the project root.

# Stop the script immediately if any command fails
set -e

# Move up from scripts/mac/ into the project root
cd "$(dirname "$0")/../.."

# Create a virtual environment in ./venv (reuses it if it already exists)
python3 -m venv venv

# Activate the virtual environment so pip/python use it
source venv/bin/activate

# Install the packages listed in requirements.txt (Django, etc.)
pip install -r requirements.txt

# Create/update the database tables (db.sqlite3)
python manage.py migrate
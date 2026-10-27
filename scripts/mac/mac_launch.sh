#!/bin/bash
# Starts the Django development server on macOS.
# Run scripts/mac/mac_setup.sh first if you haven't already.

# Stop the script immediately if any command fails
set -e

# Move up from scripts/mac/ into the project root
cd "$(dirname "$0")/../.."

# Activate the virtual environment created by setup
source venv/bin/activate

# Start the server at http://127.0.0.1:8000/ (Ctrl+C to stop)
python manage.py runserver
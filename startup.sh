#!/bin/bash

# Check if a virtual environment exists. If not, create one.
if [ ! -d "/home/site/wwwroot/venv" ]; then
  echo "Creating virtual environment..."
  python -m venv /home/site/wwwroot/venv
fi

# Activate the virtual environment
source /home/site/wwwroot/venv/bin/activate

# Install dependencies from requirements.txt
echo "Installing dependencies from requirements.txt..."
pip install -r requirements.txt

# Start the application using Gunicorn
echo "Starting Gunicorn..."
gunicorn --bind 0.0.0.0:8000 application:app

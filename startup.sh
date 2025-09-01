#!/bin/bash
set -x

# Install system dependencies
apt-get update
apt-get install -y gcc g++ unixodbc-dev

# Upgrade pip to avoid old urllib3 bug
python -m pip install --upgrade pip setuptools wheel

# Install project dependencies
python -m pip install -r requirements.txt

# Start app with Gunicorn
gunicorn --bind 0.0.0.0:8000 application:app

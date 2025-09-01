#!/bin/bash

# Install necessary system dependencies for pyodbc
sudo apt-get update
sudo apt-get install -y unixodbc-dev g++

# Start the application using a command like gunicorn or your specific startup command
gunicorn --bind 0.0.0.0:8000 "your_app.wsgi:application"

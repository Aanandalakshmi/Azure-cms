"""
This script runs the FlaskWebProject application using a development server.
"""

from FlaskWebProject import app  # use the app you defined in __init__.py

if __name__ == "__main__":
    # Use Flask's built-in development server (optional, only for local testing)
    app.run(host="0.0.0.0", port=8000, debug=True)

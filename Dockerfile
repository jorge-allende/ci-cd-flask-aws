# Use slim Python image
FROM python:3.12.3-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your entire app folder (keep structure)
COPY my_flask_app/ my_flask_app/

# Set environment variable so Flask knows where the app is
ENV FLASK_APP=my_flask_app/app.py

# Allow Flask to listen on all IPs inside the container
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000

# Command to run the Flask app
CMD ["flask", "run"]

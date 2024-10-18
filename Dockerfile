# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required Python packages
RUN pip install --no-cache-dir flask

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable to prevent Python from buffering stdout/stderr
ENV PYTHONUNBUFFERED=1

# Run the Flask app
CMD ["python", "app.py"]

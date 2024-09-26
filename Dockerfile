# Use the official Python image from the Docker Hub
FROM python:3.6.5

# Set the working directory to /app
WORKDIR /app

# Copy local contents into the container
ADD . /app

# Install all required dependencies
RUN pip install -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Command to run the application
CMD ["python", "main.py"]  # Change 'main.py' to 'app.py' or your entry point

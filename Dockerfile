# Use official Python image as base 
FROM python:3.9-slim

# Set working directory inside container
WORKDIR /app

# Copy hello.py into container 
COPY hello.py .

# Run the script on container startup
CMD ["python", "hello.py"]

# Start from a base Python image
FROM python:3.9-slim

# Set the directory inside the container where we want to store our app
WORKDIR /app

# Copy the content of our current directory (our Flask app) into that directory
COPY . /app

# Install Python dependencies. These are specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Tell Docker that our app runs on port 5000
EXPOSE 5000

# Command to run our app
CMD ["python", "main.py"]

# Use the official Python image as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app/

# Expose port 8030 to the outside world
EXPOSE 8030

# Set the host to '0.0.0.0' to make the app accessible externally
CMD ["python", "app/app.py", "--host", "0.0.0.0", "--port", "8030"]

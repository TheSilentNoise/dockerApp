# Use an official Python runtime as a parent image
FROM python:3.5-slim

# Set the working directory to /app
WORKDIR /dockerApp

# Copy the current directory contents into the container at /app
ADD . /dockerApp

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World,Rajesh

# Run app.py when the container launches
CMD ["python", "app.py"]

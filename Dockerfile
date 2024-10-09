# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# If you don't have a requirements.txt, you can skip this part or create it.
RUN pip install --no-cache-dir Flask

# Make port 5001 available to the world outside this container
EXPOSE 5000


# Define environment variables
ENV FLASK_APP=my_app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000

# Run app.py when the container launches
CMD ["flask", "run"]

# Use a lightweight Python 3.11 image based on Debian Buster.
# The "slim-buster" variant minimizes unnecessary dependencies, making the image smaller and faster.
FROM python:3.11-slim-buster

# Ensures that Python output (e.g., logs, errors) is directly sent to the terminal
# instead of being buffered, which helps in real-time debugging.
ENV PYTHONUNBUFFERED=1 

# Set the working directory inside the container.
# All subsequent commands will be executed from this directory.
WORKDIR /django

# Copy the `requirements.txt` file from the host machine to the container.
COPY requirements.txt requirements.txt

# Install the Python dependencies listed in `requirements.txt` using pip.
RUN pip3 install -r requirements.txt

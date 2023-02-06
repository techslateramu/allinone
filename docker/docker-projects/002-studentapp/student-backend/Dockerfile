FROM python:3.8

# Install Flask and the Flask CORS extension, pymongo - dependencies 
COPY requirements.txt .
RUN pip3 install -r requirements.txt

# Copy the app.py file to the container
COPY app.py /app/app.py

# Set the working directory to the app directory
WORKDIR /app

# EXPOSE 9300
# EXPOSE 27017


# Run the app when the container is started
CMD ["python", "app.py"]




# This Dockerfile does the following:

# Uses the python:3.8 base image, which provides a Python 3.8 runtime environment.
# Installs the Flask and Flask CORS Python packages using pip.
# Copies the app.py file to the /app directory in the container.
# Sets the working directory to /app.
# Specifies that the app.py script should be run when the container is started.
# To build the Docker image using this Dockerfile, run the following command in the same directory as the Dockerfile:


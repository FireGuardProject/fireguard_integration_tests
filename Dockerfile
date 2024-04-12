# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the local code to the container
COPY . .

# Install Poetry
RUN pip install pipx
RUN pipx install poetry
RUN /root/.local/bin/poetry install 

# Command to run tests
CMD ["poetry", "run", "pytest"]

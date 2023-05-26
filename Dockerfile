# Use a base image
# FROM ubuntu:latest

# # Set an environment variable
# ENV MY_VARIABLE=Srijani

# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]

# # Expose a port
# EXPOSE 8080

# Add files to the container
# ADD ./app /app

# # Set the entrypoint
# ENTRYPOINT ["python3", "./app.py"]

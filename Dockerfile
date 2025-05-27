FROM ubuntu:25.10
RUN apt update && apt upgrade

# Copy over local dir files
COPY ./server /server
COPY ./dependencies /sdk

# Set the path for ASIO SDK
RUN export PATH="/sdk:$PATH" 

# Set the working Directory
WORKDIR /app

# TODO: 
# Connect to Redis Database (docker compose?)
# Compile & run server
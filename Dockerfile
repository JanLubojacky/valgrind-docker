FROM ubuntu:22.04

# make sure valgrind doesn't ask for interactions
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install build-essential make cmake valgrind -y

WORKDIR /home
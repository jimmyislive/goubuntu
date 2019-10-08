FROM ubuntu:latest

LABEL maintainer_name="Jimmy John"
LABEL maintainer_email="jimmyislive@gmail.com"

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:longsleep/golang-backports
RUN apt-get install -y golang-go vim  
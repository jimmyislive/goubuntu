FROM ubuntu:latest

LABEL maintainer_name="Jimmy John"
LABEL maintainer_email="jimmyislive@gmail.com"

RUN apt-get update && \
    apt-get install -y vim curl
RUN curl -O https://dl.google.com/go/go1.16.2.linux-amd64.tar.gz && \
    tar -xvzf go1.16.2.linux-amd64.tar.gz && \
    mv go /usr/local && \
    apt-get remove -y curl && \
    rm -rf /var/lib/apt/lists/*
ENV PATH $PATH:/usr/local/go/bin


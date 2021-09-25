FROM ubuntu:18.04

LABEL maintainer_name="Jimmy John"
LABEL maintainer_email="jimmyislive@gmail.com"

RUN apt-get update && \
    apt-get install -y vim curl
RUN curl -O https://dl.google.com/go/go1.17.1.linux-amd64.tar.gz && \
    tar -xvzf go1.17.1.linux-amd64.tar.gz && \
    mv go /usr/local && \
    apt-get remove -y curl && \
    rm -rf /var/lib/apt/lists/*
ENV PATH $PATH:/usr/local/go/bin


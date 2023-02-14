FROM ubuntu:22.04

RUN apt update
RUN apt install -y curl nodejs unzip npm
RUN mkdir -p /tmp/tmpdir
WORKDIR /tmp/tmpdir
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN apt remove -y curl unzip
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR /
RUN rm -rf /tmp/tmpdir

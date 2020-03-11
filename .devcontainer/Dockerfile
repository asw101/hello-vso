FROM ubuntu:latest
COPY . .
ENV PATH "$PATH:/usr/local/go/bin:/root/go/bin"
RUN cd .devcontainer && \
    bash 0-docker.sh

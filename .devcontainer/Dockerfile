FROM ubuntu:latest

COPY . .
ENV PATH "$PATH:/usr/local/go/bin:/home/user/go/bin:/home/user/.cargo/bin"
RUN cd .devcontainer && \
    bash 0-docker.sh
USER user

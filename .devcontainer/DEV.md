# DEV

```bash
alias docker='sudo docker'

docker build -t test -f .devcontainer/Dockerfile .

docker run --rm -it ubuntu:latest bash

docker run --rm -it test:latest bash

# docker login

docker tag test:latest asw101/hello-vso

docker push asw101/hello-vso

```

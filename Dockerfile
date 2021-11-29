# syntax=docker/dockerfile:1
FROM node:latest

RUN apt-get update
RUN mkdir app

RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)"

CMD ["bash"]
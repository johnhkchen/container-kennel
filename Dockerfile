# syntax=docker/dockerfile:1

FROM node:latest
RUN apt-get update
RUN mkdir app

CMD ["bash"]
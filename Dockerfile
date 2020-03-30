FROM ubuntu:18.04
MAINTAINER vortex

# docker run -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -t beersmith

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get upgrade -y \
    && useradd --create-home --shell /bin/bash beersmith

ADD https://s3.amazonaws.com/beersmith-3/BeerSmith-3.0.9_amd64.deb /home/beersmith

RUN apt install -y /home/beersmith/BeerSmith-3.0.9_amd64.deb

USER beersmith

CMD ["beersmith3"]

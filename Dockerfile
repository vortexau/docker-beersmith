FROM ubuntu:18.04
MAINTAINER vortex

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get upgrade -y \
    && useradd --create-home --shell /bin/bash beersmith

COPY BeerSmith-3.0.9_amd64.deb /home/beersmith

RUN apt install -y /home/beersmith/BeerSmith-3.0.9_amd64.deb

CMD ["beersmith3"]

FROM docker.io/library/ubuntu:resolute
LABEL maintainer="M. Edward (Ed) Borasky <znmeb@algocompsynth.com>"

ARG DEBIAN_FRONTEND=noninteractive
# https://cran.r-project.org/bin/linux/ubuntu/#root
RUN apt-get update -qq \
  && apt-get install -qqy --no-install-recommends wget software-properties-common dirmngr \
  && wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc \
    | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc \
  && add-apt-repository \
    "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/" \
  && apt-get install -qqy --no-install-recommends r-base-dev

RUN nvidia-smi

COPY R-script.R ./
RUN ./R-script.R


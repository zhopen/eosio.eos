FROM ubuntu:18.04

RUN apt update 
RUN apt install -y wget curl bc

 
RUN wget https://github.com/EOSIO/eos/releases/download/v2.1.0/eosio_2.1.0-1-ubuntu-18.04_amd64.deb

RUN apt install -y ./eosio_2.1.0-1-ubuntu-18.04_amd64.deb

RUN rm ./eosio_2.1.0-1-ubuntu-18.04_amd64.deb

RUN mkdir -p /eos/contracts /eos/data-dir

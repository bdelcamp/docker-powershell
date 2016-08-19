# Version 0.0.1

FROM ubuntu:16.04

MAINTAINER Brandon Delcamp <supreme.overlord@bdelcamp.net>

RUN apt-get update && \
apt-get -y upgrade && \
apt-get -y install wget libunwind8 libicu55 && \
wget https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.9/powershell_6.0.0-alpha.9-1ubuntu1.16.04.1_amd64.deb && \
dpkg -i ./*.deb

RUN apt-get clean

ENTRYPOINT ["/usr/bin/powershell"]

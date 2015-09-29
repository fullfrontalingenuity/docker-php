FROM php:latest

MAINTAINER Bryan Belanger bbelanger@azcender.com

RUN apt-get -y update; \
    curl -O http://apt.puppetlabs.com/puppetlabs-release-pc1-jessie.deb; \
    dpkg -i puppetlabs-release-pc1-jessie.deb; \
    apt-get -y install puppet

ENV PATH /opt/puppetlabs/bin:$PATH


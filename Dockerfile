FROM ubuntu:latest

MAINTAINER Nauman Badar

# some usefull command aliases
RUN echo "alias ll='ls -la'" >> /root/.bashrc \
&& echo "alias l=ls" >> /root/.bashrc \


# sbt
#~~~~

# Install whois which includes mkpasswd utility
&& apt-get update \
&& apt-get install -y whois

# generate password
CMD mkpasswd -m sha-512

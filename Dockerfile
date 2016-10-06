FROM ubuntu:16.04

MAINTAINER Joakim Fristedt joakim.fristedt@findwise.com

RUN apt-get update -qq

RUN apt-get install software-properties-common -qqy

RUN apt-add-repository ppa:ansible/ansible

RUN apt-get update -qq

RUN apt-get install ansible -qqy

CMD ["/bin/bash", "-c", "ansible --version"]

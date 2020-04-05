FROM ubuntu:18.04
COPY . /build
CMD sudo apt update
CMD sudo apt install software-properties-common
CMD sudo apt-add-repository --yes --update ppa:ansible/ansible
CMD sudo apt install ansible
